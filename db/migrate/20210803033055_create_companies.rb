class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.boolean :provide_insurance
      t.integer :paid_vacation_days
      t.integer :entry_salary
      t.integer :max_salary
    end
  end
end
