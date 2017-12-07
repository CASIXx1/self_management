class ChangeColumnToCustom < ActiveRecord::Migration[5.1]
  def up
    change_column :customs, :title, :string, null: false
    change_column :customs, :description, :text, null: false
  end

  def down
    change_column :customs, :title, :string
    change_column :customs, :description, :text
  end
end
