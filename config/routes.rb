Rails.application.routes.draw do
	root to: 'home#index'

	get 'index', to: 'home#index'
	get 'shop', to: 'home#shop'
	get 'about', to: 'home#about'
	get 'contribute', to: 'home#contribute'
	get 'news', to: 'home#news'

	resources :posts

	resources :news
end
