# app/controllers/customers_controller.rb

class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
  end

  def create
    @customer = Customer.new(company: params[:company], category: params[:category], department: params[:department],
            name: params[:name], staff: params[:staff], note: params[:note])

    @customer.save
    redirect_to("/customers/#{@customer.id}")

    if params[:name_card]
      @customer.name_card ="#{@customer.id}.jpg"
      image = params[:name_card]
      File.binwrite("public/images/#{@customer.id}.jpg", image.read)
    end
    
  end

  def show
    @customers = Customer.all
    @customer = Customer.find_by(id:params[:id])

    if params[:name_card]
      @customer.name_card ="card_#{@customer.id}.jpg"
      image = params[:name_card]
      File.binwrite("public/images/#{@customer.id}.jpg", image.read)
    end

  end

  def edit
    @customer = Customer.find_by(id:params[:id])
  end

  def update
  @customer = Customer.find_by(id: params[:id])
  @customer.company = params[:company]
  @customer.category = params[:category]
  @customer.department = params[:department]
  @customer.name = params[:name]
  @customer.staff = params[:staff]
  @customer.note = params[:note]

  if params[:name_card]
    @customer.name_card ="card_#{@customer.id}.jpg"
    image = params[:name_card]
    File.binwrite("public/images/#{@customer.id}.jpg", image.read)
  end

  @customer.save
  redirect_to("/customers")
  end

  def destroy
    @customer = Customer.find_by(id: params[:id])
    @customer.destroy
    redirect_to("/customers")
  end
end
