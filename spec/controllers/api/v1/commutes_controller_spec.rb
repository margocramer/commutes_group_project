require "rails_helper"

RSpec.describe Api::V1::CommutesController, type: :controller do
  let!(:first_user) { User.create(first_name: "Alan", last_name: "Stevens", email: "alan@stevens.com", password: "mypassword", username: "sathvik")}
  let!(:second_user) { User.create(first_name: "Adam", last_name: "Salts", email: "adam@salts.com", password: "password", username: "evilchicken")}

  let!(:first_commute) { Commute.create(starting_location: "East Cambridge", ending_location: "Plymouth", mode: "Automobile", time: "Afternoon", user_id: 1) }
  let!(:second_commute) { Commute.create(starting_location: "Carver", ending_location: "Woburn", mode: "Walk", time: "Morning", user_id: 2) }

  describe "GET#index" do
    it "should return a list of all the commutes" do

      get :index
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(returned_json.length).to eq 2
      expect(returned_json[0]["starting_location"]).to eq "East Cambridge"
      expect(returned_json[0]["mode"]).to eq "Automobile"
      expect(returned_json[0]["ending_location"]).to eq "Plymouth"

      expect(returned_json[1]["ending_location"]).to eq "Woburn"
      expect(returned_json[1]["time"]).to eq "Morning"
      expect(returned_json[1]["mode"]).to eq "Walk"
    end
  end

  xdescribe "GET#show" do
    it "should return reviews for the commute being shown" do

      get :show
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

    end
  end

end
