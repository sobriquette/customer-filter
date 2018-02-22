Rails.application.routes.draw do
  get 'customers/index'
  root 'customers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
