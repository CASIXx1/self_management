class CreateChecks < ActiveRecord::Migration[5.1]
  def change
    create_table :checks do |t|
      t.integer :dairy_id, foreign_key: true, null: false
      t.integer :custom_id, foreign_key: true, null: false
      t.boolean :check

      t.timestamps
    end
  end
end
