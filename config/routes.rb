Rails.application.routes.draw do
  devise_for :users

  root to: "homepage#index"

  get '/users/:user_id', to: 'homepage#index', as: 'image_by_user'
  get '/categories/:category_id', to: 'homepage#index', as: 'image_by_category'
  get '/tags/:tag_id', to: 'homepage#index', as: 'image_by_tag'

  post '/like', to: 'like#like', as: 'like_image'
  post '/unlike', to: 'like#unlike', as: 'unlike_image'
  get '/more', to: 'homepage#more', as: 'add_image'

  resources :upload, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
