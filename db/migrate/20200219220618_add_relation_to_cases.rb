class AddRelationToCases < ActiveRecord::Migration[6.1]
  def change
    add_reference :cases, :appartment
  end
end
