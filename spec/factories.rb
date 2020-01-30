FactoryBot.define do
  factory :item do
    name { "MyString" }
    description { "MyText" }
  end

  factory :user do
    name { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
  end

  factory :review do
    author {"Puppy"}
    content {"if you arent first you are last"}
    rating {5}
    city_name {"New York City"}
    country_name {"United Statesqu"}
  end
end
