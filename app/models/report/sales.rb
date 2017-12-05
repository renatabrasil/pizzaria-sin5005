class Report::Sales
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
  attr_accessor :initial_date, :final_date, :order_status, :seller, :seller_id,
    :month, :year
  # alias_attribute :initial_date, :final_date

  def initialize(attributes = {})
    self.attributes = attributes
    self.seller = Employee.new
  end

  def attributes=(attributes)
    # @email = attributes[:email]
    # @message = attributes[:message]
  end

end
