Rails.application.routes.draw do
  resources :events do
    member do
      get :join_event
    end
  end
  root to: 'static_pages#landing'
  get 'landing', to: 'static_pages#landing'
  get 'selection', to: 'static_pages#selection'
  get 'sign', to: 'jios#new'
  get 'new', to: 'events#new'
  get 'list', to: 'events#index'

  resources :jios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
