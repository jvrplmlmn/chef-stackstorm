include_attribute 'stackstorm::user'

# Config defaults options
default['stackstorm']['config'] = {
  api_url: 'http://127.0.0.1:9101',
  api_host: '0.0.0.0',
  api_port: 9101,
  debug: false,
  auth_host: '0.0.0.0',
  auth_port: 9100,
  auth_use_ssl: false,
  auth_enable: true,
  rmq_host: '127.0.0.1',
  rmq_vhost: nil,
  rmq_username: 'guest',
  rmq_password: 'guest',
  rmq_port: 5672,
  allow_origin: '*',
  auth_standalone_file: '/etc/st2/htpasswd',
  syslog_enabled: false,
  syslog_host: '127.0.0.1',
  syslog_port: 514,
  syslog_facility: 'local7',
  syslog_protocol: 'udp',
  system_user: node['stackstorm']['user']['user'],
  ssh_key_file: "#{node['stackstorm']['user']['home']}/.ssh/id_rsa",
  db_host: '127.0.0.1',
  db_port: 27017,
  db_name: 'st2',
  db_username: nil,
  db_password: nil,
  mask_secrets: true
}
