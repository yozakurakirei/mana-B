Rails.application.routes.draw do
  root 'admin#index'
  
  resources :companies
  resources :staffs
  resources :conditions

end
