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

	test "should return matches for full name" do
		@customer = Customer.where(first_name: "Jane", last_name: "Doe").order('first_name ASC, last_name ASC')
		@result = Customer.search('Jane Doe')

		assert_equal(@customer, @result)
	end

	test "should return matches for first or last name" do
		@customer = Customer.where('first_name=? OR last_name=?', 'Jane', 'Jane').order('first_name ASC')
		@result = Customer.search('Jane')

		assert_equal(@customer, @result)
	end
end
