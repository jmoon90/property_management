require 'spec_helper'

feature "Owner" do
  scenario 'inputs valid information' do
    visit new_owner_path
    fill_in 'First Name', with: "john"
    fill_in 'Last Name', with: "moon"
    click_on 'Create Owner'

    expect(page).to have_content("Add New Owner")
  end

  scenario 'inputs invalid information' do
    visit new_owner_path
    click_on 'Create Owner'

    expect(page).to have_content("Invalid information. Please try again")
  end
end
