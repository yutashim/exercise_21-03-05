Rails.application.routes.draw do
  devise_for :devise_users
  root 'posts#index'
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.developtment?
end
