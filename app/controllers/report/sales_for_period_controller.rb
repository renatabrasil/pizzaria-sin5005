class Report::SalesForPeriodController < ApplicationController
  def new
    if @sales_report.nil?
      @sales_report = Report::Sales.new
      # @sales_report.initial_date = Date.today.strftime("%d/%m/%Y")
    end

    unless !@sales.nil? && @sales.size > 0
      @sales = []
    end


  end

  def index
  # @sales_report = SalesReport.new(params[:sales_report])
  @sales_report = Report::Sales.new
  @sales_report.month = params[:sales_report][:month]
  @sales_report.year = params[:sales_report][:year]

  @sales = []

  # TODO: Otimizar. Pode ser que seja melhor executar uma consulta só.
  if !@sales_report.year.blank?
    @sales = Order.where("extract(year from created_at) = ?", @sales_report.year)
    puts "\nAno: " + @sales_report.year
  end

  if !@sales_report.month.blank?
    @sales = Order.where("extract(month from created_at) = ?", @sales_report.month)
    puts "\nMonth: " + @sales_report.month
  end


  @total_sales = 0
  unless @sales.empty?
    @sales.each do |order|
      @total_sales = @total_sales + order.value
    end
  end

  # @sales = Order.where(status: @sales_report.order_status, created_at: @sales_report.initial_date..@sales_report.final_date,
  #   employee_id: @sales_report.seller.id)

  render 'new'
end

end
