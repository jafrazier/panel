Rails.application.routes.draw do
  root 'pages#home'

  get 'users/new'
  get 'users/create'
  get 'users/show'
  get 'users/edit'
  get 'users/index'
  get 'users/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
