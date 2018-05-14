$pipeline.pool('6.5-NSXT21') do |pool|
  pool.params = {
    RSPEC_FLAGS: [
      '--tag nsxt_21',
      '--tag network_management'
    ].join(' '),
    NSXT_SKIP_SSL_VERIFY: "true"
  }
end