class CreateEstates < ActiveRecord::Migration[6.1]
  def change
    create_table :estates do |t|
      t.string :address
      t.string :zipcode
      t.timestamps
    end
  end
end
