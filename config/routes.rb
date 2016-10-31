Rails.application.routes.draw do
  # ROUTES
  # verb 'url/path'  => 'controller#action', as: 'named_route'
  # HTTP VERBS: get, post, put, patch, delete

  # SHOW Routes
  get  'students'     => 'students#index' # Student Index (Show All Students)
  get  'students/:id' => 'students#show', as: 'student', id: /\d+/ # Student Show (Show A Student)

  # CREATE Routes
  get  'students/new' => 'students#new', as: 'new_student'
  post 'students'     => 'students#create'

  root to: 'students#index'
end
