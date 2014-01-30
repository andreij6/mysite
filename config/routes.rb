TheBlog::Application.routes.draw do
  get "games/index"
  get "games/start"
  get "games/play"
  
  resources :games
  
  resources :categories

  resources :blogs

  root "welcome#index"
  
end
