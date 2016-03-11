def redis_instance
  if Rails.env.test?
    require 'mock_redis'
    MockRedis.new
  elsif ENV['REDIS_PROVIDER']
    Redis.new(url: ENV[ENV['REDIS_PROVIDER']])
  elsif ENV['REDIS_URL']
    Redis.new(url: ENV['REDIS_URL'])
  else
    Redis.new
  end
end

def redis_namespace
  if Rails.env.production?
    'magmaconf_api'
  else
    "magmaconf_#{Rails.env}"
  end
end

$redis = Redis::Namespace.new(redis_namespace, redis: redis_instance)
