Rails.application.routes.draw do
  root to: 'book_search#index'
  post'search', to: 'book_search#search'
  resources :categories do
    resources :products
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
