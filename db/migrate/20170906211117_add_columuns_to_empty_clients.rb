class AddColumunsToEmptyClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :name, :string, null: false
    add_column :clients, :phone, :string, null: false
    add_column :clients, :address, :string, null: false
  end
end
