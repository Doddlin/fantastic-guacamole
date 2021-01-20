class AddRelationsToEstate < ActiveRecord::Migration[6.1]
  def change
    add_reference :estates, :propowner, index: true
    add_foreign_key :estates, :propowners
    remove_index :appartments, column: :propowner_id, unique: true
  end
end
