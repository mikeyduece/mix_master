Rails.application.routes.draw do
  root to: 'artists#index'
  resources :artists do
    resources :songs
  end
  
  resources :songs, only: [:show]
  
  resources :playlists, only: [:index, :new, :create, :show]
end
