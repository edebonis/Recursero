Rails.application.routes.draw do
  get 'contacto', to: 'contacto#index'

  get 'bienvenido/index'

  resources :eventos
  resources :lugares


  root 'bienvenido#index'
end
