require 'test_helper'

class PaymentMethodCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_method_category = payment_method_categories(:one)
  end

  test "should get index" do
    get payment_method_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_method_category_url
    assert_response :success
  end

  test "should create payment_method_category" do
    assert_difference('PaymentMethodCategory.count') do
      post payment_method_categories_url, params: { payment_method_category: { name: @payment_method_category.name } }
    end

    assert_redirected_to payment_method_category_url(PaymentMethodCategory.last)
  end

  test "should show payment_method_category" do
    get payment_method_category_url(@payment_method_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_method_category_url(@payment_method_category)
    assert_response :success
  end

  test "should update payment_method_category" do
    patch payment_method_category_url(@payment_method_category), params: { payment_method_category: { name: @payment_method_category.name } }
    assert_redirected_to payment_method_category_url(@payment_method_category)
  end

  test "should destroy payment_method_category" do
    assert_difference('PaymentMethodCategory.count', -1) do
      delete payment_method_category_url(@payment_method_category)
    end

    assert_redirected_to payment_method_categories_url
  end
end
