class UrlShortenersController < ApplicationController
  def create
    @url_shortener = UrlShortener.new(url_shortener_params)
    @url_shortener.save
    render json: @url_shortener.shorter_url
  end

  def top_hundred_visited
    @top_hundred = UrlShortener.order(visited: :desc).first(100)
    render json: @top_hundred
  end

  def redirect_to_original
    @url_shortener = UrlShortener.find_by(shorter_url: params[:shorter_url])
    redirect_to @url_shortener.original_url
  end

  private

  def url_shortener_params
    params.permit(:original_url)
  end


end
