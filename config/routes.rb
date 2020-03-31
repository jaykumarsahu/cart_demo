Rails.application.routes.draw do

  resources :products
  resources :sessions, only: [:new, :create] do
    delete :log_out, on: :collection
  end

  resources :carts, only: [:create, :destroy]

  root 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


# listing -> index
# single record -> show
# create single record -> create
# update single record -> update
# delete single record -> destroy
