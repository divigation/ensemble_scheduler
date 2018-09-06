Rails.application.routes.draw do
  resources :shows
  resources :terms
  resources :ensembles
  resources :players
 root 'players#index'
end
