class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
    @vehicles = @customer.vehicles.all
  end

  def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(customer_params)
      if @customer.save
        redirect_to @customer, notice: 'Customer was successfully created.'
      else
        render action: "new"
      end
  end

  def update
    @customer = Customer.find(params[:id])
      if @customer.update_attributes(customer_params)
        redirect_to @customer, notice: 'Customer was successfully updated.'
      else
        render action: "edit"
      end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to customers_url
  end

  private

  def customer_params
    params.require(:customer).permit(:address, :city, :name, :state)
  end
end
