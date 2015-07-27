Rails.application.routes.draw do

	resources :leads
	
  root 'pages#home'
end
