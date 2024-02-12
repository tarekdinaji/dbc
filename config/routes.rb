Rails.application.routes.draw do
  resources :news do 
    resources :tags 
  end 
  root "news#index"
end
