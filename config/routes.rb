Rails.application.routes.draw do
  resources :projeks
  root 'projeks#index'
end
