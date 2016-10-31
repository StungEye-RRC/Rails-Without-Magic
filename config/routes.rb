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

  # UPDATE Routes
  get 'students/:id/edit' => 'students#edit', as: 'edit_student', id: /\d+/
  patch 'students/:id'    => 'students#update'

  root to: 'students#index'
end
