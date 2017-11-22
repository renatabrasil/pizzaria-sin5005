class SalesReportsController < ApplicationController
  def new
    if @sales_report.nil?
      @sales_report = SalesReport.new
      @sales_report.initial_date = Date.today.strftime("%d/%m/%Y")
    end

    unless !@sales_reports.nil? && @sales_reports.size > 0
      @sales_reports = []
    end
  end

  def generate
    # @sales_report = SalesReport.new(params[:sales_report])
    @sales_report = SalesReport.new
    @sales_report.order_status = params[:sales_report][:order_status]
    @sales_report.initial_date = params[:sales_report][:initial_date]
    @sales_report.final_date = params[:sales_report][:final_date]
    @sales_report.seller_id = params[:sales_report][:seller_id]

    query = ""
    if !@sales_report.order_status.blank?
      query = query + " status = '" + @sales_report.order_status + "'"
    end
    #  FIXME: Corrigir o formato da data. Usando o where sem a string funciona.
    # if !@sales_report.initial_date.blank? && !@sales_report.final_date.blank?
    #   query = query + " created_at BETWEEN " + @sales_report.initial_date +
    #     " AND " + @sales_report.final_date
    #   elsif !@sales_report.initial_date.blank?
    #     query = query + " created_at = " + @sales_report.initial_date
    #   elsif !@sales_report.final_date.blank?
    #     query = query + " created_at = " + @sales_report.final_date
    # end
    if !@sales_report.seller_id.blank?
      query = query + " AND employee_id = " + @sales_report.seller_id.to_s
    end
    puts "query " + query

    if query.blank?
      @sales_reports = Order.all
    else
      @sales_reports = Order.where(query)
    end

    # @sales_reports = Order.where(status: @sales_report.order_status, created_at: @sales_report.initial_date..@sales_report.final_date,
    #   employee_id: @sales_report.seller.id)

    render 'new'
  end
end
