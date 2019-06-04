require 'test_helper'

class BillPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill_payment = bill_payments(:one)
  end

  test "should get index" do
    get bill_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_payment_url
    assert_response :success
  end

  test "should create bill_payment" do
    assert_difference('BillPayment.count') do
      post bill_payments_url, params: { bill_payment: { amount_paid: @bill_payment.amount_paid, confirmation_number: @bill_payment.confirmation_number, payment_date: @bill_payment.payment_date } }
    end

    assert_redirected_to bill_payment_url(BillPayment.last)
  end

  test "should show bill_payment" do
    get bill_payment_url(@bill_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_payment_url(@bill_payment)
    assert_response :success
  end

  test "should update bill_payment" do
    patch bill_payment_url(@bill_payment), params: { bill_payment: { amount_paid: @bill_payment.amount_paid, confirmation_number: @bill_payment.confirmation_number, payment_date: @bill_payment.payment_date } }
    assert_redirected_to bill_payment_url(@bill_payment)
  end

  test "should destroy bill_payment" do
    assert_difference('BillPayment.count', -1) do
      delete bill_payment_url(@bill_payment)
    end

    assert_redirected_to bill_payments_url
  end
end
