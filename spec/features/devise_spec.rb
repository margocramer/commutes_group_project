require 'spec_helper'
require 'rails_helper'

feature 'sign up' do
  scenario 'user specifies valid and required information' do
    visit root_path
    click_link 'Sign up'
    fill_in 'First Name', with: 'Bob'
    fill_in 'Last Name', with: 'Smith'
    fill_in 'Email', with: 'bob34@gmail.com'
    fill_in 'Password', with: 'Mypassforbob'
    fill_in 'Password Confirmation', with: 'Mypassforbob'
    click_button 'Sign up'

    # expect(page).to have_content("You have signed up")
    # expect(page).to have_content("Sign Out")

  end
end
