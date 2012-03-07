ENV["REDISTOGO_URL"] ||= "redis://username:password@127.0.0.1:6379/"
uri = URI.parse(ENV["REDISTOGO_URL"])
Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
