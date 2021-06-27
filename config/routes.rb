Rails.application.routes.draw do
  root to: 'book_search#index'
  post'search', to: 'book_search#search'
  get 'product', to: 'book_search#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
