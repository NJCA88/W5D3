require 'rack'

class App
  def call(env)
    http_status = '200'
    headers = { 'Content-Type' => 'text/html' }
    body = ['hello world']

    [http_status, headers, body]
  end
end

Rack::Server.start(
  app: App.new,
  Port: 3000
)

# app = Proc.new do |env|
#   req = Rack::Request.new(env)
#   res = Rack::Response.new
#   res['Content-Type'] = "text/text"
#   res.write(req.path)
#   res.finish
# end
# 
# Rack::Server.start(
#   app: app,
#   Port: 3000
# )
