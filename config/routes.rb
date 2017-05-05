Rails.application.routes.draw do
  root to: 'out#index'
  get '/', to: 'out#index', as: 'out'
  get '/about', to: 'out#about', as: 'about'
  get '/moments', to: 'moments#index', as: 'moments'
  

match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
match 'auth/failure', to: redirect('/'), via: [:get, :post]
match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

end
