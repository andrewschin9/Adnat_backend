Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    
    post "/organizations" => "organizations#create"
    get "/organizations" => "organizations#index"

    post "/shifts" => "shifts#create"
    get "/shifts" => "shifts#index"
    delete "/shifts/:id" => "shifts#destroy"

  end
end
