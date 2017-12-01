class AddCustomIdToRule < ActiveRecord::Migration[5.1]
  def change
    add_column :rules, :custom_id, :integer
  end
end
