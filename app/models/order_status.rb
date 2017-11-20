class OrderStatus < ApplicationRecord
  REGISTERED = 'CADASTRADO'
  PREPARING = 'EM PREPARO'
  READY = 'PRONTO'
  DELIVERING = 'EM ENTREGA'
  DELIVERED = 'ENTREGUE'


  def self.all
    options = []
    options.push(REGISTERED)
    options.push(PREPARING)
    options.push(READY)
    options.push(DELIVERING)
    options.push(DELIVERED)
    return options
  end
end
