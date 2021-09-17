Rails.application.routes.draw do

  get 'mana/index'
  get 'mana/show'
  resources :companies do
    collection { post :import }
  end
  
  resources :staffs do
    collection { post :import }
  end
  
  resources :admins
  resources :conditions
  
  devise_scope :user do
    root 'users/sessions#new'
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
