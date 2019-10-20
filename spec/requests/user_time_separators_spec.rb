# frozen_string_literal: true

require "rails_helper"

RSpec.describe "UserTimeSeparators", :with_user, type: :request do
  describe "GET /user_time_separators" do
    subject { get api_user_time_separators_path }

    let(:create_size) { 1 }

    before do
      create_list(:user_time_separator, create_size, user: user)
    end

    context "正常系 / 1つ" do
      it do
        subject
        expect(response).to have_http_status(200)

        parsed_body = response.parsed_body
        expect(parsed_body.length).to eq create_size
      end
    end

    context "正常系 / 複数" do
      let(:create_size) { 30 }

      it do
        subject
        expect(response).to have_http_status(200)

        parsed_body = response.parsed_body
        expect(parsed_body.length).to eq create_size
      end
    end
  end
end
