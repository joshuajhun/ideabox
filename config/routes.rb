Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :ideas, only: [:index, :create, :show, :destroy, :update], defaults: {format: :json} do
    end
  end
end 
end
