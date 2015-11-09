Rails.application.routes.draw do
  resources:users, only:[:new,:create,:show] do
    resources:ideas, only:[:new,:create,:index,:edit,:update,:destroy]
  end
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
    namespace :admin do
    resources :categories
  end
end
