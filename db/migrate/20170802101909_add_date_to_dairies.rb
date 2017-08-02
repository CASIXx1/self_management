class AddDateToDairies < ActiveRecord::Migration[5.0]
  add_column :dairies, :date ,:datetime
end
