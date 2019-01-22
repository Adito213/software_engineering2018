Rails.application.routes.draw do
  get 'confrimations/show'
  devise_for :users
  resources :documents
  root 'documents#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end