Rails.application.routes.draw do
  get '/' => 'homes#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books' => 'books#new'
  get 'books/:id' => 'books#show', as:'book'
  get 'books/:id/edit' => 'books#edit', as:'edit'
  patch 'books/:id' => 'books#update', as:'update_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
