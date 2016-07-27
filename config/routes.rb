Rails.application.routes.draw do
	root to: 'home#index'

	get 'index', to: 'home#index'
	get 'about', to: 'home#about'
	get 'contribute', to: 'home#contribute'

	resources :posts

	resources :news
end
