class CreateCompanies < ActiveRecord::Migration[6.2]
  def change
    create_table :companies do |t|
      t.string :companyname
      t.string :address
      t.string :country
      t.integer :companytype
      t.timestamps
    end
  end
end
