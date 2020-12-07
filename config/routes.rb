Rails.application.routes.draw do
  get 'posts/create'
  get 'posts/dashboard'
  get 'posts/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'posts#index'
end
