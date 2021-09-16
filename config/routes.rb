Rails.application.routes.draw do
  devise_scope :user do
    root 'users/sessions#new'
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :companies do
    collection { post :import }
  end

  resources :staffs do
    collection { post :import }
  end

  resources :admins
  resources :conditions

end
