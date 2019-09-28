# frozen_string_literal: true

module UserCreatable
  def user
    @user ||= create(:user)
  end
end

RSpec.configure do |config|
  config.include UserCreatable, :with_user
end
