class Application
  
  def call(env)
    
    resp = Rack::Response.new  
    req = Rack::Response.new(env) 
      if req.path == "/items/<ITEM NAME>"
        resp.write "#{item.price}./n"
      else 
        resp.write "Route not found!"
        resp.status = 404
      end 
      resp.finish
    
 