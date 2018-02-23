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

end
