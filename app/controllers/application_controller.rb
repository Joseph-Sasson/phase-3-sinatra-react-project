class ApplicationController < Sinatra::Base
   set :default_content_type, 'application/json'
  
  configure do
    enable :cross_origin
    set :allow_origin, "*" 
    set :allow_methods, [:get, :post, :patch, :delete, :options] # allows these HTTP verbs
    set :expose_headers, ['Content-Type']
  end

  options "*" do
    response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
    200
  end

  get "/users" do
    User.all.to_json
  end


  post '/sign-in' do
    
    user = User.find_by(username: params[:email])
      if (user[:password] == params[:password])
        user.to_json
      else
        {error: "Incorrect Email or Password"}.to_json
      end
    end

    patch '/users/:id' do
      user = User.find(params[:id])
      user.update(
        name: params[:name],
        username: params[:username],
        password: params[:password]
      )
      user.to_json
    end

    delete '/users/:id' do
     
      user = User.find(params[:id])
      user.destroy
      user.to_json
    end
    
end
