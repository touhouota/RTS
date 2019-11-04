# frozen_string_literal: true

FactoryBot.define do
  factory :user_time_separator do
    separated_at { Time.current }
  end
end
