Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "product#index"
  get '/about', to: 'product#about'
  get '/contact', to: 'product#contact'
  get '/s1', to: 'product#s1'
  resources :request
  resources :courier
  resources :cour
 
  resources :conversations do
    resources :messages
  end

  resources :msg_conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

end
