Rails.application.routes.draw do
  resources :items do
    get :upvote, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
