Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  resources :thing_with_react_forms
  resources :thing_with_rails_forms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
