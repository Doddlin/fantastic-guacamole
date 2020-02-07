class CreateAppartments < ActiveRecord::Migration[6.1]
  def change
    create_table :appartments do |t|
      t.integer :appartmentnr
      t.integer :habitant
      t.string :address
      t.string :town
      t.string :country
      t.belongs_to :propowner

      t.timestamps
    end
  end
end
