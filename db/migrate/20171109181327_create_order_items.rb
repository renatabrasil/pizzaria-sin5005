class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.belongs_to :pizza, index: true
      t.belongs_to :order, index: true
      t.integer :quantity
      t.timestamps
    end

  end
end
