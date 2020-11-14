Rails.application.routes.draw do
  resources :users
  resources :posts
  post '/users/new', to: 'users#create', as: :create
  get '/posts/show', to: 'posts#show', as: :show_post
  get '/users/show', to: 'users#show', as: :show_user
  get '/sign_in', to:'users#sign_in', as: :sign_in
  post '/sign_in', to: 'users#sign_in_process'
  get '/users/bookmark', to: 'users#bookmark', as: :bookmark
  get '/message', to: 'users#message', as: :message
  get '/users/application', to: 'users#application'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# Prefix Verb   URI Pattern                                                       Controller#Action
#                    users GET    /users(.:format)                                users#index
#                          POST   /users(.:format)                                users#create
#                 new_user GET    /users/new(.:format)                            users#new
#                edit_user GET    /users/:id/edit(.:format)                       users#edit
#                     user GET    /users/:id(.:format)                            users#show
#                          PATCH  /users/:id(.:format)                            users#update
#                          PUT    /users/:id(.:format)                            users#update
#                          DELETE /users/:id(.:format)                            users#destroy
#                    posts GET    /posts(.:format)                                posts#index
#                          POST   /posts(.:format)                                posts#create
#                 new_post GET    /posts/new(.:format)                            posts#new
#                edit_post GET    /posts/:id/edit(.:format)                       posts#edit
#                     post GET    /posts/:id(.:format)                            posts#show
#                          PATCH  /posts/:id(.:format)                            posts#update
#                          PUT    /posts/:id(.:format)                            posts#update
#                          DELETE /posts/:id(.:format)                            posts#destroy
#                  sign_in GET    /sign_in(.:format)                              users#sign_in
#                          POST   /sign_in(.:format)                              users#sign_in_process
#                      top GET    /                                               posts#index
#                 bookmark GET    /users/bookmark(.:format)                       users#bookmark
#                  message GET    /message(.:format)                              users#message
#        users_application GET    /users/application(.:format)                    users#application
