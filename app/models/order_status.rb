class OrderStatus < ApplicationRecord
  REGISTERED = 'CADASTRADO'
  PREPARING = 'EM PREPARO'
  DELIVERING = 'EM ENTREGA'
  DELIVERED = 'ENTREGUE'


  def self.all
    options = []
    options.push(REGISTERED)
    options.push(PREPARING)
    options.push(DELIVERING)
    options.push(DELIVERED)
    return options
  end
end
