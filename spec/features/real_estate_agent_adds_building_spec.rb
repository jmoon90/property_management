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
    select 'Alabama', from: "State"
    fill_in 'Postal code', with: 39485
    click_on 'Create Building'

    expect(page).to have_content("Add New Building")
  end

  scenario 'adds owner to building' do
    visit new_building_path
    owner = FactoryGirl.create(:owner)
    owner_buildings = owner.buildings.count
    fill_in "Street address", with: "33 harrisona ave"
    fill_in 'City', with: "Boston"
    select 'Alabama', from: "State"
    fill_in 'Postal code', with: 39485
    fill_in 'Owner', with: owner.id
    click_on 'Create Building'

    expect(owner_buildings).to_not eql(owner.buildings.count)
  end
end

