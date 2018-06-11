
class Application
  
  def call(env)
    resp = Rack::Response.new
    t = Time.new
    new_time = t.strftime("%k:%M").to_f
    if new_time >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    resp.finish
  end
    
end