Rails.application.routes.draw do
    # resources :reviews
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get         "/"             => "moviedb#index"
    get         "allreviews"    => "allreviews#index"
    # root    "movies#index"
    # get     "movies"            => "movies#index"
    # get     "movies/:id"        => "movies#show", as: "movie"
    # get     "movie/:id/edit"    => "movies#edit", as: "edit_movie"
    # patch   "movies/:id"         => "movies#update" 
    # resources :movies
    resources :movies do
        resources :reviews
    end
end
