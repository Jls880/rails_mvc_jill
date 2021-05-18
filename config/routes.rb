Rails.application.routes.draw do
  resources :bookmarks
  get 'health/index'
  root to:"homepages#index"

  resources :logins
  resources :profiles
  resources :articles 
  resources :articles do
    resources :comments
  end
  #/api/articles  
namespace :api do    
  resources :articles, only: [:index, :show]  
  end
end
