class Office < ApplicationRecord
  MANAGER = 'Gerente'
  SELLER = 'Vendedor'
  DELIVERYMAN = 'Entregador'

  def self.all
    options = []
    options.push(MANAGER)
    options.push(SELLER)
    options.push(DELIVERYMAN)
    return options
  end
end
