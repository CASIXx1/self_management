class CreateDairyUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :dairy_users do |t|
      t.references :dairy, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
