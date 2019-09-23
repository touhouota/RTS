FactoryBot.define do
  factory :user do
    login { Time.current }
  end
end
