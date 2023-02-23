Rails.application.routes.draw do
  # refer to schema, list id in bookmarks
  # bookmarks must be accessed through lists to create as seen in spec.
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end

  # You don't need to nest destroy as you don't need to access to lists
  resources :bookmarks, only: [:destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
