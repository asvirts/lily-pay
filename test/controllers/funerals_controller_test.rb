require "test_helper"

class FuneralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funeral = funerals(:one)
  end

  test "should get index" do
    get funerals_url
    assert_response :success
  end

  test "should get new" do
    get new_funeral_url
    assert_response :success
  end

  test "should create funeral" do
    assert_difference("Funeral.count") do
      post funerals_url, params: { funeral: { apt_or_suite_number: @funeral.apt_or_suite_number, automatic_withdrawal_authorized: @funeral.automatic_withdrawal_authorized, bank_account_number: @funeral.bank_account_number, bank_name: @funeral.bank_name, bank_routing_number: @funeral.bank_routing_number, city: @funeral.city, credit_check_authorized: @funeral.credit_check_authorized, date_of_birth: @funeral.date_of_birth, electronic_disclosures_authorized: @funeral.electronic_disclosures_authorized, email: @funeral.email, first_name: @funeral.first_name, funeral_home_city: @funeral.funeral_home_city, funeral_home_name: @funeral.funeral_home_name, last_name: @funeral.last_name, middle_name: @funeral.middle_name, name_of_deceased: @funeral.name_of_deceased, phone: @funeral.phone, purchase_amount: @funeral.purchase_amount, state: @funeral.state, street_address: @funeral.street_address, zip: @funeral.zip } }
    end

    assert_redirected_to funeral_url(Funeral.last)
  end

  test "should show funeral" do
    get funeral_url(@funeral)
    assert_response :success
  end

  test "should get edit" do
    get edit_funeral_url(@funeral)
    assert_response :success
  end

  test "should update funeral" do
    patch funeral_url(@funeral), params: { funeral: { apt_or_suite_number: @funeral.apt_or_suite_number, automatic_withdrawal_authorized: @funeral.automatic_withdrawal_authorized, bank_account_number: @funeral.bank_account_number, bank_name: @funeral.bank_name, bank_routing_number: @funeral.bank_routing_number, city: @funeral.city, credit_check_authorized: @funeral.credit_check_authorized, date_of_birth: @funeral.date_of_birth, electronic_disclosures_authorized: @funeral.electronic_disclosures_authorized, email: @funeral.email, first_name: @funeral.first_name, funeral_home_city: @funeral.funeral_home_city, funeral_home_name: @funeral.funeral_home_name, last_name: @funeral.last_name, middle_name: @funeral.middle_name, name_of_deceased: @funeral.name_of_deceased, phone: @funeral.phone, purchase_amount: @funeral.purchase_amount, state: @funeral.state, street_address: @funeral.street_address, zip: @funeral.zip } }
    assert_redirected_to funeral_url(@funeral)
  end

  test "should destroy funeral" do
    assert_difference("Funeral.count", -1) do
      delete funeral_url(@funeral)
    end

    assert_redirected_to funerals_url
  end
end
