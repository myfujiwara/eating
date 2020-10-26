Rails.application.routes.draw do
  resources :users
  resources :posts
  get '/sign_in', to:'users#sign_in', as: :sign_in
  post '/sign_in', to: 'users#sign_in_process'
  get '/', to: 'posts#index', as: :top
  get '/users/bookmark', to: 'users#bookmark', as: :bookmark
  get '/message', to: 'users#message', as: :message
  get '/users/application', to: 'users#application'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
