require 'rails_helper'

RSpec.describe "UserTimeSeparators", type: :request do
  describe "GET /user_time_separators" do
    subject { get user_time_separators_path }

    before do
      create(:user_time_separator, user: user)
    end

    it "works! (now write some real specs)" do
      subject
      expect(response).to have_http_status(200)
    end
  end
end
