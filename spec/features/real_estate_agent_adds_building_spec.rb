require 'spec_helper'

feature "Real estate agent adds building" do
  scenario 'with invalid input' do
    new_building_path
    click_on "submit"

    expect(page).to have_content("Invalid information. Please try again")
  end

  scenario 'with valid input' do
    new_building_path

    fill_in :street_address, with: "33 harrisona ave"
    fill_in :city, with: "Boston"
    fill_in :state, with: "MA"
    fill_in :postal_code, with: 39485
    click_on "submit"

    expect(page).to have_content("Successfully added building information")
  end
end

