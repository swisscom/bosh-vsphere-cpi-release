
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

unless ARGV[0]
  puts 'Usage: pry.rb <director_config_yaml>'
  exit 1
end

require 'yaml'

require 'pry'
require 'cloud'
require 'cloud/vsphere'

bosh_director_config = OpenStruct.new(logger: Logger.new("/dev/null"), uuid: 'uuid', task_checkpoint: nil)

Bosh::Clouds::Config.configure(bosh_director_config)

director_config = YAML.load_file(ARGV[0])
vsphere_properties = director_config['cloud']['properties']

cpi = VSphereCloud::Cloud.new(vsphere_properties)

# Print everything irrespective of what has been specified in the config.
# Config just aids easy initialization of cloud object
cpi.datacenter.mob.host_folder.child_entity.each do |child|
  # Skip the hosts
  next unless child.is_a?(VimSdk::Vim::ClusterComputeResource)
  puts "Cluster : #{child.name}"
  puts " \t***** Memory Stats *****"
  cl_provider = VSphereCloud::Resources::ClusterProvider.new(:datacenter_name => cpi.datacenter.mob.name, :client => cpi.client, :logger => cpi.logger)
  # create a cluster assuming there is no resource pool in config
  clresource = cl_provider.find(child.name, VSphereCloud::ClusterConfig.new(child.name, {:resource_pool => nil}))
  puts "  \t\tFree memory (Perf Counters) : #{clresource.free_memory}"
  puts "  \t\tFree memory (cluster API) : #{clresource.mob.summary.effective_memory}"
  puts "  \t\tTotal memory (cluster API) : #{clresource.mob.summary.total_memory/VSphereCloud::Resources::BYTES_IN_MB}"
  puts "\n"
  # print every resource pool that exists under that cluster
  puts " \t*****Resource Pools Stats *****"
  clresource.mob.resource_pool.resource_pool.each do |rpool|
    puts " \t\tResource Pool : #{rpool.name}"
    rpool_mem = 0
    if rpool.summary.runtime.overall_status == "green"
      memory = rpool.summary.runtime.memory
      rpool_mem = (memory.max_usage - memory.overall_usage) / VSphereCloud::Resources::BYTES_IN_MB
    end
    puts "   \t\t\tFree Memory #{rpool_mem}"
  end
  puts "\n\n\n"
end

binding.pry
