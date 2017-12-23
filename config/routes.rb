Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :streams, only: [:new, :create, :show, :index, :edit]
  resources :users
  resources :messages

  root 'home#index'

  mount ActionCable.server => '/cable'

  # get 'streams/:id' => 'streams#show'
  post 'streams/:id' => 'streams#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
