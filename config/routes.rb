Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'games#new'
  
  resources :games, only: %i[new create] do
    resources :progresses, only: %i[new create]
  end
  
end
