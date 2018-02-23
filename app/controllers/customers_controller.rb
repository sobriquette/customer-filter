class CustomersController < ApplicationController
  def index
  	@customers = Customer.all
  end

  def show
  end

  def search
  end

  def customer_params
  	params.require(:customer).permit(:first_name, :last_name)
  end
end
