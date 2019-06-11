class OrdersController < ApplicationController
  def new
    @customer = Customer.find_by(id:params[:id])
  end

  def create
    @customer = Customer.find_by(id:params[:id])

    @order = @customer.orders.new(
      collection: params[:collection], number: params[:number], note: params[:note],
      )
    @order.save
    redirect_to("/customers/#{@customer.id}")
  end
end
