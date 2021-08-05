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

  # GET
  
  get "/users" do
    User.all.to_json(:include => :company)
  end

  get '/users/:id' do
    user = User.find_by(id: params[:id])
    user.to_json
  end

  # POST
  
  post "/sign-in" do
    user = User.find_by(email: params[:email])
    if (user[:password] == params[:password])
      user.to_json(:include => :company)
    else 
      {error: 'Incorrect Email or Password'}.to_json
    end
  end

  post "/users" do 
    user = User.create(user_params)
    puts user_params.inspect
    puts params.inspect
    puts user.inspect
    user.to_json
  end

# PATCH

  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(user_params)
    user.to_json
  end

  # DELETE

  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

  # PRIVATE
  private 

  def user_params
    allowed_params = %w(name username email password company_name)
    params.select {|param,value| allowed_params.include?(param)}
  end
end
