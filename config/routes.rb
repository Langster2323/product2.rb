Rails.application.routes.draw do
  get 'products',  to: 'products#index'

  get 'products/:id', to: 'products#show'

  get 'conditions', to: 'conditions#index'

  root 'products#index'
end
