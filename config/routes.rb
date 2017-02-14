Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # set home to the authentication page
  root 'dashboard#authenticate'

  get '/authenticate', to: 'dashboard#authenticate'
  get '/index', to: 'dashboard#index'
  get '/signup', to: 'dashboard#signup'
  # set form submit to login controller
  post '/', to: 'dashboard#login'
  post '/teachers/create', to: 'teachers#create'
end
