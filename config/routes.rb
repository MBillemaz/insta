Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  root to: "homepage#index"

  get '/users/:user_id', to: 'homepage#show', as: 'image_by_user'
  get '/categories/:category_id', to: 'homepage#show', as: 'image_by_category'
  get '/tags/:tag_id', to: 'homapage#show', as: 'image_by_tag'
  # get '/upload', to: 'upload#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
