Rails.application.routes.draw do
  resources :events
  root to: 'static_pages#landing'
  get 'landing', to: 'static_pages#landing'
  get 'selection', to: 'static_pages#selection'
  get 'sign', to: 'jios#new'
  get 'home', to: 'home#index'
  get 'invite', to: 'jios#inviter1'
  get 'join', to: 'jios#joiner1'
  resources :jios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
