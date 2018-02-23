require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
	 setup do 
		@customer = customers(:one)
	end

	teardown do
		Rails.cache.clear
	end

	test "should get index" do
		get search_customers_path
		assert_response :success
	end

	test "should get show" do 
		get search_customers_path
		assert_response :success
	end

	test "should get search" do
		get search_customers_path
		assert_response :success
	end

	test "should return results" do
		@customer = Customer.where(first_name: "Jane", last_name: "Doe")
		@result = Customer.search('Jane Doe')

		assert_equal(customer, result)
	end
end
