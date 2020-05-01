class AddBelongsTotoCases < ActiveRecord::Migration[6.1]
  def change
    add_reference :cases, :user, foreign_key: true
  end
end
