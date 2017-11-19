class Order < ApplicationRecord
  # item: pizza (valor) e quantidade
  # valor total
  # Cliente
  # funcionario
  # status (pra eu colocar com bootstrap o andamento do pedido)
  before_save :validate_order_items
  before_save :calculate_order_value

  validates :employee, presence: true

  has_many :order_items
  has_many :pizzas, through: :order_items
  belongs_to :client
  belongs_to :employee

  accepts_nested_attributes_for :order_items, reject_if: :all_blank, allow_destroy: true

  def calculate_order_value
    value = 0.0
    unless self.order_items.empty?
      order_items.each do |item|
        item_value = item.pizza.price.to_f * item.quantity
        value = value + item_value
      end
    end
    self.value = value
  end

  # TODO: Otimizar esse código. Pode ser que tenha uma configuração para has_many
  # through que possa pegar só os elementos com alguns campos preenchidos.
  def validate_order_items
    empty_items = []
    self.order_items.each do |item|
      if (item.quantity.nil? || item.quantity == 0)
        puts item.quantity
        empty_items.push(item)
      end
    end
    self.order_items = self.order_items - empty_items
  end

end
