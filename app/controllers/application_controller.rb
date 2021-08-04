class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    users = User.all

    users.to_json(only: [:company_name], include: :users)
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
end
