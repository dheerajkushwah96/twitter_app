Rails.application.routes.draw do
  root "tweets#index"

  devise_for :users

  resources 'relationships'

  resources :tweets do
    resources :likes, :comments
  end

end
