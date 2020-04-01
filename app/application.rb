class Application
  def call(env)
    resp = Rack::Response.new
    if Time.now.hour < 11
      resp.write("<em>Good Morning!</em>")
    else
      resp.write("Good Afternoon!")
    end
    resp.finish
  end
end