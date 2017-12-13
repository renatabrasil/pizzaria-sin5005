class Report::SalesForPeriodController < ApplicationController
  def new
    if @sales_report.nil?
      @sales_report = Report::Sales.new
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
    else
      @sales = Order.all.order(created_at: :asc)
    end

    puts "\n\ncom model:\n " + classify2(@sales).inspect

    @sales = classify2(@sales)

    @total_sales = 0
    unless @sales.empty?
      @sales.each do |sales|
        @total_sales = @total_sales + sales.total_value
      end
    end

    render 'new'
  end

  private

    def classify(result, total_sales)
      result = classify2(result)

      total_sales = 0
      unless result.empty?
        result.each do |sales|
          total_sales = total_sales + sales.total_value
        end
      end
    end

    # TODO: Refatorar: criar um model para conter o resultado desse relatório
    # (substituiria o uso desse hash e melhoraria a legibilidade do código)
    # O model terá 4 atributos: (1) ano, (2) mês, (3) lista de pedidos desse período (<ano,mes>)
    # e o (4) valor total resultante da soma dos valores dos pedidos da lista.
    def classify2(result)
      # puts result.inspect
      classified_result = []
      sales_per_month = Report::SalesReport.new
      sales_per_year = Report::AnnualSalesReport.new
      unless result.empty?
        year = -1
        month = -1
        total_value = 0
        # 2017
        # [
        # 	1
        # 	[
        # 		"1";"2017-01-21";1;1;231.00;"000001";"EM PREPARO"
        # 	]
        # 	11
        # 	[
        # 		"8";"2017-11-21";1;2;57.00;"000008";"CADASTRADO"
        # 	]
        # ]
        result.each do |order|
          if (year < order.created_at.year)
            if year > -1
              sales_per_month.month = month
              sales_per_year.add(sales_per_month)
              sales_per_year.year = year
              classified_result.push(sales_per_year)
              sales_per_year = Report::AnnualSalesReport.new
              sales_per_month = Report::SalesReport.new
            end

            # sales_per_month.month = month
            year = order.created_at.year
            # sales_per_month.add(order)

          end

          if (month < order.created_at.month)
            if month > -1
              sales_per_month.month = month
              sales_per_year.add(sales_per_month)
              sales_per_month = Report::SalesReport.new
            end

            month = order.created_at.month
            # sales_per_month.add(order)
          end

          sales_per_month.add(order)

          # classified_result.push(sales_per_year)
          # sales_per_year = Report::AnnualSalesReport.new
        end
        sales_per_month.month = month
        sales_per_year.year = year
        sales_per_year.add(sales_per_month)
        classified_result.push(sales_per_year)

        puts classified_result.inspect
      end
      return classified_result
    end


    def classify_old(result)
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
        # puts classified_result.inspect
      end
      return classified_result
    end

end
