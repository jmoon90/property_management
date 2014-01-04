PropertyManagementP1::Application.routes.draw do
  resources :buildings, only: [:new, :create]
  resources :owners, only: [:new, :create]
end
