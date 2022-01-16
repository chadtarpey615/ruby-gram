Rails.application.routes.draw do
  root 'html_pages#home'
  get '/help', to: 'html_pages#help'
  get '/about', to: 'html_pages#about'
  get '/contact', to: 'html_pages#contact'
  get '/signup', to: 'users#new'
  resources :users
  # resources :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
