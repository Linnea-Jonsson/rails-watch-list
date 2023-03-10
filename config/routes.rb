Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # get "lists", to: "lists#index"

  # get "lists/new", to: "lists#new", as: :new_list
  # post "lists", to: "lists#create"

  # get "lists/:id", to: "lists#show", as: :list

resources :lists, only: [:index, :show, :new, :create] do
  resources :bookmarks, only: [:new, :create]
end

resources :bookmarks, only: [:destroy]


  # get "lists/:id/bookmarks/new", to: "bookmarks#new"
  # post "lists/:id/bookmarks", to: "bookmarks#create"
  # delete "lists/:id/bookmarks", to: "bookmarks#destroy"


end
