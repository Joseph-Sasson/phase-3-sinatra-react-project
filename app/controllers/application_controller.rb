class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/companies" do
    companies = Company.all

    companies.to_json(include: :users)
  end

end
