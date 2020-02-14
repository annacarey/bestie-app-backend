Rails.application.routes.draw do
  post 'twilio/sms', to: "twilio#sms"

  get '/friends/:number', to: "friends#confirmation"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :friends, only: [:index, :show]
  resources :users, only: [:index, :show]
  post '/users', to: 'users#create'
  post '/friends', to: 'friends#create'
  patch '/friends/:id', to: 'friends#update'
  delete '/friends/:id', to: 'friends#delete'

end
