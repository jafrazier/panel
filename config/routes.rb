Rails.application.routes.draw do
  root 'pages#home'
  resources :users
  resources :instructors do
      resources :courses
      resources :students
    end


  get 'courses/new'
  get 'courses/edit'
  get 'courses/show'
  get 'courses/index'
  get 'students/new'
  get 'students/show'
  get 'students/edit'
  get 'students/create'
  get 'students/update'
  get 'students/index'
  get 'students/destroy'

  get 'instructors/new'
  get 'instructors/edit'
  get 'instructors/show'
  get 'instructors/index'

  get 'courses/new'
  get 'courses/edit'
  get 'courses/show'
  get 'courses/index'


  get 'register' => 'users#new'
  get 'users/create'
  get 'users/show'
  get '/update' => 'users#edit'
  get 'users/index'
  get 'users/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
