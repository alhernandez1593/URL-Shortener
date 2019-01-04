Rails.application.routes.draw do
  resources :url_shorteners, only: :create
  get 'top-hundred-visited' => 'url_shorteners#top_hundred_visited', :as => :top_hundred
  get '/:shorter_url' => 'url_shorteners#redirect_to_original'
end
