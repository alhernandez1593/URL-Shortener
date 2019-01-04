class UrlShortenersController < ApplicationController
  before_action :find_url, only: [:create]

  def create
    unless @url_shortener.nil?
      @url_shortener = UrlShortener.new(url_shortener_params)
      @url_shortener.save
    end
    render json: request.base_url + "/" + @url_shortener.shorter_url
  end

  def top_hundred_visited
    @top_hundred = UrlShortener.order(visited: :desc).first(100)
    render json: @top_hundred
  end

  def redirect_to_original
    @url_shortener = UrlShortener.find_by(shorter_url: params[:shorter_url])
    @url_shortener.increment!(:visited)
    redirect_to @url_shortener.original_url
  end

  private

  def url_shortener_params
    params.permit(:original_url, :visited)
  end

  def find_url
    @url_shortener = UrlShortener.find_by(original_url: url_shortener_params[:original_url])
  end
end
