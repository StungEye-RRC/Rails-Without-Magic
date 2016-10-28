Rails.application.routes.draw do
  # routes
  # HTTP VERBS: get, post, put, patch, delete

  # verb 'url/path' => 'controller#action'

  # SHOW Routes
  get 'students'     => 'students#index' # Student Index (Show All Students)
  get 'students/:id' => 'students#show', as: 'student', id: /\d+/ # Student Show (Show A Student)
end
