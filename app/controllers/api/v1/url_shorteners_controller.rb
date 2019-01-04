class Api::V1::UrlShortenersController < ApplicationController
  def create
    @url_shortener = UrlShortener.new(url_shortener_params)
    @url_shortener.save
    json_response(@url_shortener)
  end

  private

  def url_shortener_params
    params.permit(:original_url)
  end
end
