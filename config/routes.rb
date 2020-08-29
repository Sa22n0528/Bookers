Rails.application.routes.draw do

  get 'bookers/new'
  get '/' => 'tops#top', as: 'root'

  get '/books' => 'books#index'
  post '/books' => 'books#create'
  get '/books/:id' => 'books#show' ,as: 'book'
  get '/books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update' 
  delete '/books/:id' => 'books#destroy', as: 'book_destroy'
end
