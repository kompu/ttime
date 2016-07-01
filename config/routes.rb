Rails.application.routes.draw do
  

  root 'home#index'
  
  devise_for :users
  resources :tasks do
    member do
      patch :complete
    end
      resources :tags
    end

end
