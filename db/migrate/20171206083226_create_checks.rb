class CreateChecks < ActiveRecord::Migration[5.1]
  def change
    create_table :checks do |t|
      t.integer :dairy, foreign_key: true
      t.integer :custom, foreign_key: true
      t.boolean :check

      t.timestamps
    end
  end
end
