FactoryGirl.define do
  factory :rating do
    rating rand(10)
    movie
    user
  end
end