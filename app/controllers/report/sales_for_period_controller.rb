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
    query = ""
    # TODO: Otimizar. Pode ser que seja melhor executar uma consulta só.
    if !@sales_report.year.blank? && !@sales_report.month.blank?
      @sales = Order.where("extract(year from created_at) = ? AND
        extract(month from created_at) = ?", @sales_report.year, @sales_report.month)
        .order(created_at: :asc)
    elsif !@sales_report.year.blank?
      @sales = Order.where("extract(year from created_at) = ?", @sales_report.year)
        .order(created_at: :asc)
      puts "\nAno: " + @sales_report.year
    elsif !@sales_report.month.blank?
      @sales = Order.where("extract(month from created_at) = ?", @sales_report.month).order(created_at: :asc)
      puts "\nMonth: " + @sales_report.month
    end

    @sales = classify(@sales)

    @total_sales = 0
    unless @sales.empty?
      @sales.each do |month, sales|
        @total_sales = @total_sales + @sales[month][1]
      end
    end

    puts @total_sales

    # @sales = Order.where(status: @sales_report.order_status, created_at: @sales_report.initial_date..@sales_report.final_date,
    #   employee_id: @sales_report.seller.id)

    render 'new'
  end

  private
    def classify(result)
      classified_result = Hash.new
      unless result.empty?
        month = -1
        total_value = 0
        result.each do |order|
          if (month < order.created_at.month)
            if month > -1
              classified_result[month][1] = total_value
              total_value = 0
            end

            month = order.created_at.month
            classified_result[month] = [[], total_value]
          end
          total_value = total_value + order.value
          classified_result[month][0].push(order)
        end
        classified_result[month][1] = total_value
        puts classified_result.inspect
      end
      return classified_result
    end

end
