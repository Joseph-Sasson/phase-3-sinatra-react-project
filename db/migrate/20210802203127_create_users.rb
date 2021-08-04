class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :company_name
      t.integer :company_id
      t.string :email
    end
  end
end
