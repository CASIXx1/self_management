class CreateDairies < ActiveRecord::Migration[5.0]
  def change
    create_table :dairies do |t|

      t.timestamps
    end
  end
end
