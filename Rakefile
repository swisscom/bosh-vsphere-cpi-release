ISO9660WRAP_SOURCE = FileList['src/iso9660wrap/*.go']

%w[darwin linux].each do |os|
  name = File.join('src', 'iso9660wrap', "iso9660wrap-#{os}-amd64")
  file name => ISO9660WRAP_SOURCE do |t|
    ENV['GOPATH'] = File.join(Dir.pwd, 'src', 'iso9660wrap')
    ENV['GOOS'], ENV['GOARCH'], ENV['CGO_ENABLED'] = os, 'amd64', '0'
    sh 'go', 'build', '-o', t.name, './...'
  end

  desc "Build iso9660wrap for #{os} on amd64"
  task "iso9660wrap:#{os}" => name

  multitask 'iso9660wrap:update' => "iso9660wrap:#{os}" do |t|
    blob = File.join('iso9660wrap', "iso9660wrap-#{os}-amd64")
    sh 'bosh', 'add-blob', name, blob
  end
  multitask iso9660wrap: "iso9660wrap:#{os}"
end

desc 'Build iso9660wrap for all required platforms on amd64'
task :iso9660wrap

desc 'Update blob definitions for all iso9660wrap artifacts'
task 'iso9660wrap:update'
