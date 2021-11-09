class OrdersController < ApplicationController



  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end
  
  def edit
  end

  def create
    @order = Order.new(order_params)
         if @order.save
          flash[:notice] = "Awsome! Your order is in Kitchen"
            redirect_to  @order
     else 
      render 'new'
     end

    end
def show 
@order = Order.find(params[:id])
end
    def update
    if @order.update(order_params)
      flash[:notice] = "Order was updated successfully."
      redirect_to @order
    else
      render 'edit'
    end
  end
private
  def set_order
    @order = order.find(params[:id])
  end
  

  def order_params  
     params.require(:order).permit(:name, :phone_number, :cake_size, :flavour, :delivery_or_pickup, :delivery_address, :d_phone_number, :amount, :paid, :balance, :date, :time,:image)
  end
end

