class ChangeColumnToDairy < ActiveRecord::Migration[5.1]
  def up
    change_column :dairies, :date, :date, null: false
  end

  def down
    change_column :dairies, :date, :datetime, null: true
  end
end
