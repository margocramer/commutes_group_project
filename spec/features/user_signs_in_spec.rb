require 'spec_helper'
require 'rails_helper'

feature 'user logs in' do
    let!(:user) { User.create(first_name: "Alan", last_name: "Stevens", email: "alan@stevens.com", password: "mypassword", username: "sathvik")}
    let!(:commute) { Commute.create(starting_location: "East Cambridge", ending_location: "Plymouth", mode: "Automobile", time: "Afternoon", user_id: 1) }

    context 'user signed in' do
      scenario 'user is properly greeted' do
        visit new_user_session_path

        fill_in 'Email', with: user.email
        fill_in 'Password', with: user.password

        click_button "Log in"

        expect(page).to have_content('Signed in successfully')

      end
    end
  end
