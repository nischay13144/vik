Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "product#index"
  get '/about', to: 'product#about'
  get '/contact', to: 'product#contact'
  get '/s1', to: 'product#s1'
  resources :request
  resources :courier
  resources :cour
end
