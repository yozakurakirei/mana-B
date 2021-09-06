Rails.application.routes.draw do
  root 'admins#index'
  
  resources :companies do
    collection { post :import }
  end

  resources :staffs do
    collection { post :import }
  end

  resources :admins
  resources :conditions

end
