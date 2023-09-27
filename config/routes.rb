Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  devise_for :users
  root to: "homes#top"
  resources :books, only: [:create, :index, :show]
  get "home/about" => "homes#about", as: :about
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
