Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'students/index' => 'students#index'
  get 'students/link' => 'students#link'
  get 'students/new' => 'students#new'
  post 'students' => 'students#create'
  get 'students/:id' => 'students#show',as: 'student'
  root 'students#index'

end
