Rails.application.routes.draw do
  resources :ensembles
  resources :players
 root 'players#index'
end
