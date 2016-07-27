Rails.application.routes.draw do
	root 'users#homepage'
	 get "/auth/:provider/callback" => "sessions#create_from_omniauth"
	 resources :users, only: [:show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
