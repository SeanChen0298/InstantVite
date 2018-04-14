Rails.application.routes.draw do
  get 'static_pages/landing'
  get 'static_pages/selection'
  resources :events
  root to: 'static_pages#landing'
  get 'root', to: 'static_pages#landing'
  get 'home', to: 'home#index'
  get 'invite', to: 'jios#inviter1'
  get 'join', to: 'jios#joiner1'
  resources :jios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
