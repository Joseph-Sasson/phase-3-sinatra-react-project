class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    User.all.to_json
  end

  get '/users/:id' do
    user = User.find_by(id: params[:id])
  end

  post '/sign-in' do
    # binding.pry
    user = User.find_by(username: params[:email])
    if (user[:password] == params[:password])
      user.to_json
    else 
      {error: 'Incorrect Email or Password'}.to_json
    end
  end

end
