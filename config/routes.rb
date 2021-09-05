Rails.application.routes.draw do
  root 'admins#index'
  
  resources :companies do
    collection { post :import }
  end

  resources :admins
  resources :staffs
  resources :conditions

end
