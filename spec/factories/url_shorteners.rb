FactoryBot.define do
  factory :url_shortener do
    original_url { "MyString" }
    shorter_url { "MyString" }
    visited { "9.99" }
  end
end
