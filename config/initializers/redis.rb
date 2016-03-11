redis_url = if ENV['REDIS_PROVIDER']
  ENV[ENV['REDIS_PROVIDER']]
else
  'redis://localhost:6379/0/cache'
end

Rails.application.config.cache_store = :redis_store, redis_url, { expires_in: 7.days }