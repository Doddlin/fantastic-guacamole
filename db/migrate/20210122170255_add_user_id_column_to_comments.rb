class AddUserIdColumnToComments < ActiveRecord::Migration[6.2]
  def change
    add_reference :comments, :user, index: true
  end
end
