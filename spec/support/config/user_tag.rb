# frozen_string_literal: true

RSpec.shared_context "with User object", :with_user do
  def user
    create(:user)
  end
end
#
RSpec.configure do |config|
  config.include_context "with User object", :with_user
end
