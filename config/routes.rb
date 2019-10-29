Rails.application.routes.draw do
  root 'chatrooms#index'
  devise_for :users
  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end
end
