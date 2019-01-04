class UrlShortener < ApplicationRecord
  validates_presences_of :original_url
end
