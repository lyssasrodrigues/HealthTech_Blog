Rails.application.routes.draw do
  #autenticacao do usuario (devise)
  devise_for :users

  #pagina institucional
  get "sobre", to: "pages#about", as: :about
  
  #pagina com os artigo do usuario logado
  get "meus-artigos", to: "articles#my_articles", as: :my_articles
  
  #pagina inicial
  root "articles#index"
  
  #crud completo dos artigos
  resources :articles
end
