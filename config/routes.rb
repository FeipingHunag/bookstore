Bookstore::Application.routes.draw do

  devise_for :members

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :line_items

  resources :carts

  resources :orders

  get "item/info", :as => :info

  root :to => "root#index"

  get 'admin' => 'admin/books#index', :as => :admin

  namespace :admin do
    resources :books
    resources :orders
    resources :categories
  end

end

