require 'spec_helper'
require 'rails_helper'

RSpec.describe ReviewMailer, type: :mailer do
  describe "receipt" do
    let(:mail) { ReviewMailer.receipt }

    it "renders the headers" do
      expect(mail.subject).to eq("New for review for your commute")
      expect(mail.to).to eq(["smnrwebster5@gmail.com"])
      expect(mail.from).to eq(["GettingSquirrely@weird.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to include("Someone has left a new review for your commute!!")
    end
  end

end
