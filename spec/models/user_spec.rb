require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
    it { should have_valid(:first_name).when('Bob', 'Kacey') }
    it { should_not have_valid(:first_name).when('', nil) }

    it { should have_valid(:last_name).when('Jones', 'Goodwill') }
    it { should_not have_valid(:last_name).when('', nil) }

    it { should have_valid(:username).when('Kyle34', 'Lemon54') }
    it { should_not have_valid(:username).when('', nil) }

    it { should have_valid(:email).when('bob45@gmail.com', 'minion64@aol.com') }
    it { should_not have_valid(:email).when('', nil, 'rheo', 'reghir.com', 'hello@') }

    it { should have_valid(:admin).when(true, false) }
    it { should_not have_valid(:admin).when(nil, "")}

    it { should have_valid(:photo_url).when('www.google.com/picture.jpg') }

  end
end
