require 'spec_helper'
require 'rails_helper'

feature 'sign up' do

  scenario 'user sees all of the expected sign up fields' do
    visit root_path
    click_link 'Sign up'
    expect(page).to have_content('Username')
    expect(page).to have_content('First Name')
    expect(page).to have_content('Last Name')
    expect(page).to have_content('Email')
    expect(page).to have_content('Password (6 characters minimum)')
    expect(page).to have_content('Password Confirmation')
  end

  scenario 'user specifies valid and required information' do
    visit root_path
    click_link 'Sign up'
    fill_in 'Username', with: 'Bobby Bob'
    fill_in 'First Name', with: 'Bob'
    fill_in 'Last Name', with: 'Smith'
    fill_in 'Email', with: 'bob34@gmail.com'
    fill_in 'Password', with: 'Mypassforbob'
    fill_in 'Password Confirmation', with: 'Mypassforbob'
    click_button 'Sign up'

    expect(page).to have_content("You have signed up")
    expect(page).to have_content("Sign Out")

  end

  scenario 'required information is not supplied' do
    visit root_path
    click_link 'Sign up'
    click_button 'Sign up'

    expect(page).to have_content("can't be blank")
    expect(page).to_not have_content("Sign Out")
  end
end
