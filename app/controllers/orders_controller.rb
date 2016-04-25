class OrdersController < ApplicationController

def index
  @orders = Order.all
end

def show
  @order = Order.find params[:id]
end

def new
  @order = Order.new
  @parties = Party.all
  @foods = Food.all
end

def create
  order = Order.create!(order_params)
  redirect_to parties_path
end

def update
  order = Order.find params[:id]
  order.update order_params
  redirect_to orders_path
end

def edit
  @order = Order.find params[:id]
end

def destroy
    order = Order.find params[:id]
    order.destroy
    redirect_to orders_path
end

private

def order_params
  params.require(:order).permit(:user_id, :party_id, :food_id)
end







end
