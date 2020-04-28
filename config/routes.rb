Rails.application.routes.draw do

  resources :themes
  root :to => "cities#index" 

  resources :tripactivities
  resources :trips

  resources :cities do
		resources :activities do
      collection { post :import}
      resources :photos
		end
	end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
