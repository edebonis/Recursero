Rails.application.routes.draw do
  get 'contacto', to: 'contacto#index'


  resources :eventos
  resources :lugares

  get '/', to: 'bienvenido#index' 
  post '/', to: 'bienvenido#index'

  root 'bienvenido#index'
end
