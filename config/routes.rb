Rails.application.routes.draw do
  get 'contacto/index'

  get 'bienvenido/index'

  resources :eventos

  root 'bienvenido#index'
end
