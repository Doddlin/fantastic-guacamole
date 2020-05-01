class AddCaseStatustoCases < ActiveRecord::Migration[6.1]
  def change
    add_column :cases, :case_status, :string
  end
end
