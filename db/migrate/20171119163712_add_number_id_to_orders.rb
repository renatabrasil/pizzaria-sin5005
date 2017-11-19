class AddNumberIdToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :number_id, :string, default: "000000", unique: true
  end
end
