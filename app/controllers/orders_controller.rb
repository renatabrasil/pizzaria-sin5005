class OrdersController < ApplicationController
  before_action :authenticate_user!

  # TODO: talvez possa fazer tudo com o edit e o update
  def answer

    @order = Order.find(params[:id])
  end

  def index
    @status = params[:status]
    unless @status.nil?
      @orders = Order.where(status: @status).order(created_at: :desc)
    else
      @orders = Order.all.order(created_at: :desc)
    end

  end

  def new
    @order = Order.new
    # puts current_user.employee.name
    # @order.order_items.build
    # @order.order_items.new
    @order.status = OrderStatus::REGISTERED
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
	    redirect_to orders_path
  	else
	    render 'new'
		end
  end

  def update
	  @order = Order.find(params[:id])

    @answer = params[:answer]
    unless @answer.nil?
      @order.update_column(:status, OrderStatus::PREPARING)
      params.delete :answer
      flash[:success] = "Pedido atendido com sucesso. Acompanhe o preparo."
      redirect_to @order
    end

	  if @order.update(order_params)
	    redirect_to @order
	  else
	    render 'edit'
	  end
	end


	def show
		@order = Order.find(params[:id])
    if !params[:answer].nil? or params[:answer] === true
      @answer = true

    end
	end

	def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to orders_path
	end

  private
    def order_params
      params.require(:order).permit(:client_id, :employee_id, :value, :status,
      :order_item_ids, order_items_attributes: [:quantity, :pizza_id, :id])
    end

end
