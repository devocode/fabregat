Rails.application.routes.draw do

  devise_for :users
	resources :leads
	
  root 'pages#home'

  get 'en' => 'pages#en'
end
