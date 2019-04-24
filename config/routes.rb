Shutils::Engine.routes.draw do
  namespace :api do
    scope module: :v1, default: {format: :json} do
      resources :remarks, except: [:edit]
    end
  end
end
