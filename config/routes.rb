Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    member do 
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end
    resources :comments
  end

  get "/pages/:page" => "pages#home"
  get "/pages/:page" => "pages#about"
  get "/pages/:page" => "pages#learn"
  get "/pages/:page" => "pages#blog"
  get "/pages/:page" => "pages#show"

  root "pages#home", page: "home"
end
