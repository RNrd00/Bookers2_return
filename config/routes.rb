Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "home/about" => "homes#about"
  resources :books, only:[:index, :show, :edit, :create, :destroy]
  get 'users/index'
  get 'users/show'
  get 'users/edit'
end
