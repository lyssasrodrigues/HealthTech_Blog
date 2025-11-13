Rails.application.routes.draw do
  get "pages/about"
  root "articles#index"
  get "sobre", to: "pages#about"
  resources :articles
end
