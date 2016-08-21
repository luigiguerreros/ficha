Rails.application.routes.draw do
  get 'categorias/index'

  get 'welcome/index'

  resources :gestions
  resources :subtipos
  resources :caracteristicadeco2s
  resources :caracteristicadeco1s
  resources :deco2s
  resources :deco1s
  resources :antenapuntos
  resources :caracteristicamodems
  resources :modems
  resources :caracteristicatelefonos
  resources :telefonos
  resources :descuentos
  resources :promocions
  resources :modopagos
  resources :tecnos
  resources :administrativas
  resources :ocpaquetes
  resources :internets
  resources :lineas
  resources :paquetes
  resources :tipos
  resources :zonals
  resources :campanas
  resources :origens
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'
end
