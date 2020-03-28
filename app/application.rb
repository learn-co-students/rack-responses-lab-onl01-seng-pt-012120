class Application
  
  def call(env)
    resp = Rack::Response.new
    
    time = Time.now.hour
    
    if time <= 12
      puts resp.write "Good Morning!"
    else
      puts resp.write "Good Afternoon!"
    end
    
    resp.finish
  end
  
end