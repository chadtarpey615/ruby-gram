Rails.application.routes.draw do
  get 'job/add'
  get 'job/list'
  resources :resumes
  # root to #resumes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
