class UrlShortener < ApplicationRecord
  after_initialize :create_url_short
  validates_presences_of :original_url

  def create_url_short
    self.visited = 0
    self.shorter_url = ([*('A'..'Z'), *('0'..'9')] - %w[0 1 O]).sample(6).join
  end
end
