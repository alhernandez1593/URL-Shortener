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

class UrlShortener < ApplicationRecord
  before_create :create_url_short
  validates :original_url, presence: true

  def create_url_short
    self.visited = 0
    chars = ([*('A'..'Z'), *('a'..'z'), *('0'..'9')] - %w[0 1 O]).flatten
    self.shorter_url = 6.times.map { chars.sample }.join
    self.shorter_url = 6.times.map { chars.sample }.join until UrlShortener.find_by(shorter_url: shorter_url).nil?
  end
end
