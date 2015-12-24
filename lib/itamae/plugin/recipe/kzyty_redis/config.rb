# Configure redis

node.reverse_merge!(
  kzyty_redis: {
    port: 6379
  }
)

port = node[:kzyty_redis][:port]
execute 'configure redis port ' do
  command %(sed -i -e 's/^port [0-9]\\{1,\\}$/port #{port}/g' /etc/redis.conf)
  not_if %(grep -e '^port #{port}$' /etc/redis.conf)
end
