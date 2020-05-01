class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :case
      t.timestamps
    end
  end
end
