class AddUserIdToCustom < ActiveRecord::Migration[5.1]
  def change
    add_column :customs, :user_id, :integer
  end
end
