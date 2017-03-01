Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root   'posts#index'
  get    '/posts'              => 'posts#index'
  get    '/users'              => 'users#index'
  post   '/users'              => 'users#create'
  get    '/posts/:id'          => 'posts#show'
  get    '/posts/:id/comments' => 'posts#show_comments'
  get    '/users/:id/posts'    => 'users#show_posts'
  get    '/posts/:id/upvote'   => 'posts#upvote'
  delete '/posts/:id'          => 'posts#destroy'
end
