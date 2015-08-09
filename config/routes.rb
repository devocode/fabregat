Rails.application.routes.draw do

	resources :leads
	
  root 'pages#home'

  get 'en' => 'pages#en'
end
