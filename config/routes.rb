Rails.application.routes.draw do

  resources :themes
  root :to => "cities#index" 

  resources :tripactivities
  resources :trips

  resources :cities do
    resources :photos do
      collection { post :import}
    end
		resources :activities do
      collection { post :import}
		end
	end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
