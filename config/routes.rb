Rails.application.routes.draw do


  resources :histories
  resources :breeds
  resources :dogs

  get 'dashboard', 		 to: 'dashboards#index' , as: 'dashboard'

  root 'dashboards#index'

end
