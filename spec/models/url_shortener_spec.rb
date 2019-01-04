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

require 'rails_helper'

RSpec.describe UrlShortener, type: :model do
  it { should validate_presence_of(:original_url) }
end
