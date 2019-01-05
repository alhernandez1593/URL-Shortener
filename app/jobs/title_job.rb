require 'net/http'
class TitleJob
  @queue = :titles

  def self.perform(url)
    pry.py
    url.title = Net::HTTP.get(URI(url.original_url)) =~ /<title>(.*?)<\/title>/
    url.save
  end
end