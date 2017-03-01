Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root   'posts#index'
  get    '/posts'                 => 'posts#index'
  get    '/users'                 => 'users#index'
  post   '/users'                 => 'users#create'
  get    '/posts/:id'             => 'posts#show'
  get    '/posts/:id/comments'    => 'comments#index'
  get    '/users/:user_id/posts'  => 'posts#index'
  delete '/posts/:id'             => 'posts#destroy'
  post   '/posts/:id/upvote'      => 'posts#upvote'
end
