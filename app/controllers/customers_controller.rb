class CustomersController < ApplicationController
  def index
  	@customers = Customer.all
  end

  def show
  end

  def search
  	if params[:query]
	  	@customers = Customer.search(params[:query])
	else
  		@customers = Customer.all
  	end
  end

  def customer_params
  	params.require(:customer).permit(:first_name, :last_name)
  end
end
