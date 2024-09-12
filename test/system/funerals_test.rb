require "application_system_test_case"

class FuneralsTest < ApplicationSystemTestCase
  setup do
    @funeral = funerals(:one)
  end

  test "visiting the index" do
    visit funerals_url
    assert_selector "h1", text: "Funerals"
  end

  test "should create funeral" do
    visit funerals_url
    click_on "New funeral"

    fill_in "Apt or suite number", with: @funeral.apt_or_suite_number
    check "Automatic withdrawal authorized" if @funeral.automatic_withdrawal_authorized
    fill_in "Bank account number", with: @funeral.bank_account_number
    fill_in "Bank name", with: @funeral.bank_name
    fill_in "Bank routing number", with: @funeral.bank_routing_number
    fill_in "City", with: @funeral.city
    check "Credit check authorized" if @funeral.credit_check_authorized
    fill_in "Date of birth", with: @funeral.date_of_birth
    check "Electronic disclosures authorized" if @funeral.electronic_disclosures_authorized
    fill_in "Email", with: @funeral.email
    fill_in "First name", with: @funeral.first_name
    fill_in "Funeral home city", with: @funeral.funeral_home_city
    fill_in "Funeral home name", with: @funeral.funeral_home_name
    fill_in "Last name", with: @funeral.last_name
    fill_in "Middle name", with: @funeral.middle_name
    fill_in "Name of deceased", with: @funeral.name_of_deceased
    fill_in "Phone", with: @funeral.phone
    fill_in "Purchase amount", with: @funeral.purchase_amount
    fill_in "State", with: @funeral.state
    fill_in "Street address", with: @funeral.street_address
    fill_in "Zip", with: @funeral.zip
    click_on "Create Funeral"

    assert_text "Funeral was successfully created"
    click_on "Back"
  end

  test "should update Funeral" do
    visit funeral_url(@funeral)
    click_on "Edit this funeral", match: :first

    fill_in "Apt or suite number", with: @funeral.apt_or_suite_number
    check "Automatic withdrawal authorized" if @funeral.automatic_withdrawal_authorized
    fill_in "Bank account number", with: @funeral.bank_account_number
    fill_in "Bank name", with: @funeral.bank_name
    fill_in "Bank routing number", with: @funeral.bank_routing_number
    fill_in "City", with: @funeral.city
    check "Credit check authorized" if @funeral.credit_check_authorized
    fill_in "Date of birth", with: @funeral.date_of_birth.to_s
    check "Electronic disclosures authorized" if @funeral.electronic_disclosures_authorized
    fill_in "Email", with: @funeral.email
    fill_in "First name", with: @funeral.first_name
    fill_in "Funeral home city", with: @funeral.funeral_home_city
    fill_in "Funeral home name", with: @funeral.funeral_home_name
    fill_in "Last name", with: @funeral.last_name
    fill_in "Middle name", with: @funeral.middle_name
    fill_in "Name of deceased", with: @funeral.name_of_deceased
    fill_in "Phone", with: @funeral.phone
    fill_in "Purchase amount", with: @funeral.purchase_amount
    fill_in "State", with: @funeral.state
    fill_in "Street address", with: @funeral.street_address
    fill_in "Zip", with: @funeral.zip
    click_on "Update Funeral"

    assert_text "Funeral was successfully updated"
    click_on "Back"
  end

  test "should destroy Funeral" do
    visit funeral_url(@funeral)
    click_on "Destroy this funeral", match: :first

    assert_text "Funeral was successfully destroyed"
  end
end
