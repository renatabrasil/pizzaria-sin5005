class AddColumnsToOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :client, index: true
    add_reference :orders, :employee, index: true, null: false
    add_column :orders, :value, :decimal, :precision => 8, :scale => 2
  end

end

# item: pizza (valor) e quantidade
# valor total
# Cliente
# funcionario
# status (pra eu colocar com bootstrap o andamento do pedido)
