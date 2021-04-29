require "application_system_test_case"

class EmpdetailsTest < ApplicationSystemTestCase
  setup do
    @empdetail = empdetails(:one)
  end

  test "visiting the index" do
    visit empdetails_url
    assert_selector "h1", text: "Empdetails"
  end

  test "creating a Empdetail" do
    visit empdetails_url
    click_on "New Empdetail"

    fill_in "Email", with: @empdetail.email
    fill_in "Location", with: @empdetail.location
    fill_in "Name", with: @empdetail.name
    fill_in "Phone number", with: @empdetail.phone_number
    fill_in "Role", with: @empdetail.role
    click_on "Create Empdetail"

    assert_text "Empdetail was successfully created"
    click_on "Back"
  end

  test "updating a Empdetail" do
    visit empdetails_url
    click_on "Edit", match: :first

    fill_in "Email", with: @empdetail.email
    fill_in "Location", with: @empdetail.location
    fill_in "Name", with: @empdetail.name
    fill_in "Phone number", with: @empdetail.phone_number
    fill_in "Role", with: @empdetail.role
    click_on "Update Empdetail"

    assert_text "Empdetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Empdetail" do
    visit empdetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empdetail was successfully destroyed"
  end
end
