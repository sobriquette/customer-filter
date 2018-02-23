require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  	setup do 
		@customer = customers(:one)
	end

	teardown do
		Rails.cache.clear
	end
end
