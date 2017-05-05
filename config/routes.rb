Rails.application.routes.draw do


  
  devise_for :users
  # --------------------------
  # routes to/from splash page
  # --------------------------

  # -------------
  # ---WORKING---
  # -------------
  root to: 'out#index'
  get '/', to: 'out#index', as: 'out'
  # -------------
  # ---WORKING---
  # -------------
  get '/about', to: 'out#about', as: 'about'

  # ---------------
  # routes for user
  # ---------------

  # get '/users', to: 'users#index', as: 'users'
  # profile page
  # -------------
  # ---WORKING---
  # -------------
  get '/users/:id/show', to: 'users#show', as: 'user'
  # create a user
  # -------------
  # ---WORKING---
  # -------------
  get '/users/new', to: 'users#new', as: 'new_user'
  # needs post/'create'

  # -------------
  # ---WORKING---
  # -------------
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # needs put/'update'

  # needs delete 'destroy'

  # ------------------
  # routes for moments
  # ------------------

  # -------------
  # ---WORKING---
  # -------------
  get '/moments', to: 'moments#index', as: 'moments'
  # -------------
  # ---WORKING---
  # -------------
  get '/moments/:id/show', to: 'moments#show', as: 'show'
  # -------------
  # ---WORKING---
  # -------------
  get '/moments/new', to: 'moments#new', as: 'new_moment'
  # needs post/'create'
  # -------------
  # ---WORKING---
  # -------------
  get 'moments/:id/edit', to: 'moments#edit', as: 'edit_moment'
  # needs put/'update'

  # needs delete 'destroy'



match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
match 'auth/failure', to: redirect('/'), via: [:get, :post]
match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

end
