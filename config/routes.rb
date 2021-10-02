Rails.application.routes.draw do

  resource :administrators do
    collection do 
      get 'index'
      get 'employee'
    end
  end

  resources :companies do
    collection { post :import }
  end
  
  resources :staffs do
    collection { post :import }
  end
  
  resources :admins do
    # 承認待ち
    resources :applies, only: %i[index create destroy]
    # 検索
    collection do 
      get 'search'
    end
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
