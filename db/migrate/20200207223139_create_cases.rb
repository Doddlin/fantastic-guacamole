class CreateCases < ActiveRecord::Migration[6.1]
  def change
    create_table :cases do |t|
      t.string :casetitle
      t.text :casedescription
      t.timestamps
    end
  end
end
