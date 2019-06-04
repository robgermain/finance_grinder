require 'test_helper'

class BillingAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @billing_account = billing_accounts(:one)
  end

  test "should get index" do
    get billing_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_billing_account_url
    assert_response :success
  end

  test "should create billing_account" do
    assert_difference('BillingAccount.count') do
      post billing_accounts_url, params: { billing_account: { is_active: @billing_account.is_active, name,: @billing_account.name, } }
    end

    assert_redirected_to billing_account_url(BillingAccount.last)
  end

  test "should show billing_account" do
    get billing_account_url(@billing_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_billing_account_url(@billing_account)
    assert_response :success
  end

  test "should update billing_account" do
    patch billing_account_url(@billing_account), params: { billing_account: { is_active: @billing_account.is_active, name,: @billing_account.name, } }
    assert_redirected_to billing_account_url(@billing_account)
  end

  test "should destroy billing_account" do
    assert_difference('BillingAccount.count', -1) do
      delete billing_account_url(@billing_account)
    end

    assert_redirected_to billing_accounts_url
  end
end
