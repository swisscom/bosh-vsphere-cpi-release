$pipeline.pool('6.7-NSXT22') do |pool|
  pool.params = {
    RSPEC_FLAGS: [
      '--tag vm_host_group',
    ].join(' '),
    NSXT_SKIP_SSL_VERIFY: "true"
  }
end