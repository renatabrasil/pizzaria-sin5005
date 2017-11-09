class Order < ApplicationRecord
  # item: pizza (valor) e quantidade
  # valor total
  # Cliente
  # funcionario
  # status (pra eu colocar com bootstrap o andamento do pedido)
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

end
