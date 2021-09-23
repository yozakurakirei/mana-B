Rails.application.routes.draw do

  get 'administrator/index'

  resources :companies do
    collection { post :import }
  end
  
  resources :staffs do
    collection { post :import }
  end
  
  resources :admins do
    resources :applies, only: %i[index create destroy]
  end
  resources :conditions

  # 承認一覧
  resources :approvals, only: %i[index create destroy]
  
  devise_scope :user do
    root 'users/sessions#new'
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
