Rails.application.routes.draw do
  scope :admin do
  resources :admin
  end
  get 'accounts/show'
  devise_for :users#, controllers: {sessions: 'users/sessions'}
  root to: "home#index"
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
