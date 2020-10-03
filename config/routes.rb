Rails.application.routes.draw do
  root 'updloads#new'
  resources :updloads
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
