class AddColumunsToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :name, :string, null: false
    add_column :employees, :office, :string, null: false
    add_column :employees, :salary, :string, null: false
    add_column :employees, :workload, :string, null: false
    add_column :employees, :telephone, :string, null: false
  end
end
