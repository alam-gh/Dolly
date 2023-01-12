require 'sinatra'
require 'redis'

#put something in redis
redis = Redis.new(:host => ENV["REDIS_HOST"], :port => ENV["REDIS_PORT"])
redis.set("thiskey", "thisvalue")

redis = Redis.new(:host => ENV["REDIS_HOST"], :port => ENV["REDIS_PORT"])

get '/' do
  value = redis.get("thiskey")
  "<h1>#{value}</h1>"
end
