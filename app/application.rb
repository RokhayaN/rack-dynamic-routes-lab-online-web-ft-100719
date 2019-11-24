class Application
  
  def call(env)
    
    resp = Rack::Response.new  
    req = Rack::Response.new(env) 
      if req.path == "/items/<ITEM NAME>"
        resp.write "#{item.price}./n"
      else 
        resp.write "Unfortunatly,we do not carry this!"
        resp.status 404
    
 