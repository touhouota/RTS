FactoryBot.define do
  factory :user_time_separator do
    separator { Time.current.to_i }
  end
end
