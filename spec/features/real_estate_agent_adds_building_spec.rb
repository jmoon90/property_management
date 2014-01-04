require 'spec_helper'

feature "Real estate agent adds building" do
  scenario 'with invalid input' do
    visit new_building_path
    click_on "Create Building"

    expect(page).to have_content("Invalid information. Please try again")
  end

  scenario 'with valid input' do
    visit new_building_path

    fill_in "Street address", with: "33 harrisona ave"
    fill_in 'City', with: "Boston"
    fill_in 'State', with: "MA"
    fill_in 'Postal code', with: 39485
    click_on 'Create Building'

    expect(page).to have_content("Add New Building")
  end
end

