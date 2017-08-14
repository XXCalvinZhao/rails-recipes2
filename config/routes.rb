Rails.application.routes.draw do

  devise_for :users

  resources :events

  namespace :admin do
    root "events#index"
    resources :events
    resources :users 
  end

  root "events#index"

  get "/faq" => "pages#faq"

  resource :user

end
