class AddcolumntoappartmentsEstateIDpkey < ActiveRecord::Migration[6.2]
  def change
    add_reference :appartments, :estate, index: true
    remove_column :appartments, :propowner_id
  end
end
