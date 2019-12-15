# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { "test" }
    pw { "password" }
  end
end
