class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end
  
  
  def create

    @order = Order.new(order_params)
         if @order.save
          flash[:notice] = "Awsome! Your order is in Kitchen"
            redirect_to  order_path(@order)
     else 
      render 'new'
     end

    end
  def show
        @order = Order.find(params[:id])
    end

private
  def order_params  
     params.require(:order).permit(:name, :phone_number, :cake_size, :flavour, :delivery_or_pickup, :delivery_address, :d_phone_number, :amount, :paid, :balance, :date, :time,:image)
  end
end
