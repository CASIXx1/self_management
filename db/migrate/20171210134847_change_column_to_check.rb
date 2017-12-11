class ChangeColumnToCheck < ActiveRecord::Migration[5.1]
  def up
    add_column :checks, :continue, :boolean
    remove_column :checks, :check, :boolean
  end

  def down
    add_column :checks, :check, :boolean
    remove_column :checks, :continue, :boolean
  end
end
