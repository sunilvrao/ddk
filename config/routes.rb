Ddk::Application.routes.draw do
  resources :dashboards


  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  
  resources :dashboards;
  resources :users do
    resources :stores do
      resources :locations
    end
  end
  
end