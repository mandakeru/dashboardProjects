Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)
  resources :payments
  resources :people
  resources :managers
  resources :deadlines
  resources :tasks
  resources :sprints
  resources :resources
  resources :issues
  resources :projects
  
  devise_for :users
  root 'welcome#index'
  
  
end
