class Addcolumntocase < ActiveRecord::Migration[6.2]
  def change
    add_column :cases, :assigned_to, :integer
  end
end
