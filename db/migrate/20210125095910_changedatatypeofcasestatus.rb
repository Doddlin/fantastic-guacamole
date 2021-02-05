class Changedatatypeofcasestatus < ActiveRecord::Migration[6.2]
  def change
    remove_column :cases, :case_status
    add_column :cases, :case_status, :integer
  end
end
