class AddColumunsToPizza < ActiveRecord::Migration[5.1]
  def change
    add_column :pizzas, :name, :string, null: false
    add_column :pizzas, :price, :string, null: false
  end
end
