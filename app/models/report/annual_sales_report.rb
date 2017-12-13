# TODO: Refatorar: criar um model para conter o resultado desse relatório
# (substituiria o uso desse hash e melhoraria a legibilidade do código)
# O model terá 4 atributos: (1) ano, (2) mês, (3) lista de pedidos desse período (<ano,mes>)
# e o (4) valor total resultante da soma dos valores dos pedidos da lista.
class Report::AnnualSalesReport
  extend ActiveModel::Naming
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations
  # initial_date
  # final_date
  # order_status
  # has_many orders
  # value

  # has_many :orders
  attr_accessor :year, :sales_per_months, :total_value
  # alias_attribute :initial_date, :final_date

  def initialize(attributes = {})
    self.attributes = attributes
    # self.orders_for_month = Hash.new
    self.sales_per_months = []
    self.total_value = 0
    # self.year = 0
  end

  def attributes=(attributes)
    # @email = attributes[:email]
    # @message = attributes[:message]
  end

  def add(sales_per_month)
    self.sales_per_months.push(sales_per_month)
    self.total_value = self.total_value + sales_per_month.total_value
  end

  def includes_orders_and_adds_total_value(orders)
    unless orders.empty?
      orders.each do |order|

      end
    end
  end

end
