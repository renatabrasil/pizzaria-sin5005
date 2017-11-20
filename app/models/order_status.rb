class OrderStatus < ApplicationRecord
  REGISTERED = 'CADASTRADO'
  PREPARING = 'EM PREPARO'
  DELIVERING = 'EM ENTREGA'
  DELIVERED = 'ENTREGUE'
end
