class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    # puts current_user.employee.name
    # @order.order_items.build
    # @order.order_items.new
    @order.order_items.build
    @order.employee = current_user.employee
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    # @order.order_items.new(order_params)

  	if @order.save
	    redirect_to @order
  	else
	    render 'new'
		end
  end

  def update
	  @order = Order.find(params[:id])

	  if @order.update(order_params)
	    redirect_to @order
	  else
	    render 'edit'
	  end
	end


	def show
		@order = Order.find(params[:id])
	end

	def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to orders_path
	end

  private
    def order_params
      params.require(:order).permit(:client_id, :employee_id, :value, :order_item_ids,
      order_item_attributes: [:quantity, :pizza_id, :order_id])
    end

end
