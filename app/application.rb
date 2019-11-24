class Application
  @@items[]
  def call(env)
    
    resp = Rack::Response.new  
    req = Rack::Response.new(env)
    
      if req.path.match(/items/)
        item = @@items.find do |i| 
        i.name == item_name
        resp.write "#{item.price}./n"
      else 
        resp.write "Route not found!"
        resp.status = 404
      end 
      resp.finish
    end 
  end 
    
 