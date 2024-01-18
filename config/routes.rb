Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # User CRUD Routes
  # get "/users" => "users#index" # probably don't need
  post "/users" => "users#create" # register new user
  get "/users/:id" => "users#show" # display user profile 
  patch "/users/:id" => "users#update" # update user info
  delete "/users/:id" => "users#destroy" # delete user 

  # Games CRUD Routes
  post "/games" => "games#create" # start a new game
  get "/games/:id" => "games#show" # show current game, guesses, attempts left, etc.
  update "/games/:id" => "games" # update current game (ie submit guess)

  # Guesses CRUD Routes
  post "/guesses" => "guesses#create" # submit a guess

  # Words CRUD Routes
   # get "/words" => "words"#index" # probably don't need
  post "/words" => "words#create" # for admin to add words
  get "/words/:id" => "words#show" # display the correct word
  # patch "/words/:id" => "words#update" # probably don't need
  # delete "/words/:id" => "words#destroy" # probably dont need


  # Sessions CRUD Routes
  post "/sessions" => "sessions#create" # log in
  delete "/sessions/:id" => "sessions#destroy" # log out
  
end
