# == Schema Information
#
# Table name: url_shorteners
#
#  id           :bigint(8)        not null, primary key
#  original_url :string
#  shorter_url  :string
#  visited      :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :url_shortener do
    original_url { "MyString" }
    shorter_url { "MyString" }
    visited { "9.99" }
  end
end
