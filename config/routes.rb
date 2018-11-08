Rails.application.routes.draw do
	root 'home#index'
  get '/find', to: 'home#search'
  post '/find', to: 'home#result'
  get '/update', to: 'home#update'
end
