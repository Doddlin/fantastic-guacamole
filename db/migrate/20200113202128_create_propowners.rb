class CreatePropowners < ActiveRecord::Migration[6.1]
  def change
    create_table :propowners do |t|
      t.string :propownername

      t.timestamps
    end
  end
end
