class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @customer = Customer.find_by(id:params[:id])
  end

  def create
    @customer = Customer.find_by(id:params[:id])

    @order = @customer.orders.new(
      collection: params[:collection], number: params[:number], note: params[:note], delivery: params[:delivery]
      )
    binding.pry
    @order.save
    redirect_to("/customers/#{@customer.id}")
  end
end
