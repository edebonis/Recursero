Rails.application.routes.draw do
  resources :posts
  get 'contacto/index'

  get 'infojardin/index'

  get 'bienvenido/index'

  resources :eventos

  root 'bienvenido#index'
end
