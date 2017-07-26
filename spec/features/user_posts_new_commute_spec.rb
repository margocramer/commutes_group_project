require 'spec_helper'
require 'rails_helper'

feature 'Post Commute' do
  scenario 'user posts a new commute' do
    visit root_path
    click_link 'Sign up'
    fill_in 'Username', with: 'Bobby Bob'
    fill_in 'First Name', with: 'Bob'
    fill_in 'Last Name', with: 'Smith'
    fill_in 'Email', with: 'bob34@gmail.com'
    fill_in 'Password', with: 'Mypassforbob'
    fill_in 'Password Confirmation', with: 'Mypassforbob'
    click_button 'Sign up'
    click_link 'Post Commute'
    expect(page).to have_content('Starting Location')
    expect(page).to have_content('Ending Location')
    expect(page).to have_content('Mode')
    expect(page).to have_content('Time')
    expect(page).to have_content('Description')

    fill_in('Starting Location', with: 'Boston')
    fill_in('Ending Location', with: 'Malden')
    fill_in('Mode', with: 'Train')
    fill_in('Time', with: 'Morning')
    fill_in('Description', with: 'This commute was very long.')
    click_button('Add Commute')
    expect(page).to have_content('Commute added successfully')
  end
end
