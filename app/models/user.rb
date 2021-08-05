class User < ActiveRecord::Base
  belongs_to :company

  def company_name=(name)
    company = Company.find_or_create_by(company_name: name.titleize)
    self.company = company 
    self.save
  end

end