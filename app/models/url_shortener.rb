class UrlShortener < ApplicationRecord
  before_create :create_url_short
  validates_presence_of :original_url

  def create_url_short
    self.visited = 0
    self.shorter_url = ([*('A'..'Z'), *('0'..'9')] - %w[0 1 O]).sample(6).join until UrlShortener.find_by_shorter_url(self.shorter_url).nil?
  end
end
