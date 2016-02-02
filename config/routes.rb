Rails.application.routes.draw do
  root 'dashboard#index'

  namespace :api do
    namespace :v1 do
      resources :ideas, defaults: {format: :json} do
      end
    end
  end
end
