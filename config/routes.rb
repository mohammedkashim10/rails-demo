Rails.application.routes.draw do
  root 'static#landing'
  get 'books', to: 'books#index'
  # get 'books/new'
  # get 'books/:id/edit', to: 'books#edit'
  # get 'books/:id', to: 'books#show'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
