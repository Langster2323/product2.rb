Rails.application.routes.draw do
  get 'products',  to: 'products#index'

  # get 'items', to: 'items#index'


  get 'products/:id', to: 'products#show'

  get 'conditions', to: 'conditions#index'


  root 'dashboard#home'
end
