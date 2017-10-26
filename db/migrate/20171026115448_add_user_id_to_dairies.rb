class AddUserIdToDairies < ActiveRecord::Migration[5.1]
  def change
    add_column :dairies, :user_id, :integer
  end
end
