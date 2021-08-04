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
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/users" do
    User.all.to_json
  end

  post "/sign-in" do
    user = User.find_by(username: params[:email])
    if (user[:password] == params[:password])
      user.to_json
    else 
      {error: 'Incorrect Email or Password'}.to_json
    end
  end

  post "/users" do 
    user = User.create(user_params)
    company= Company.find_or_create_by(company_name: user_params[:company_name])
    user.company= company
    user.save
    puts user_params.inspect
    puts params.inspect
    puts user.inspect
    user.to_json
  end

  def user_params
    allowed_params = %w(name username company_name email password)
    params.select {|param,value| allowed_params.include?(param)}
  end

end
