PropertyManagementP1::Application.routes.draw do
  resources :buildings, only: [:new, :create]
end
