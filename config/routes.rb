Rails.application.routes.draw do

# root to index page
root to: "users#index"

# restFUL routes for cruding
resources :users do 
  resources :doges
end 

#Sessions
get "/sign_in", to: "sessions#new"
post "/sessions", to: "sessions#create"
delete "/sessions", to: "sessions#destroy"

end


#        Prefix Verb   URI Pattern                              Controller#Action
#           root GET    /                                        users#index
#     user_doges GET    /users/:user_id/doges(.:format)          doges#index
#                POST   /users/:user_id/doges(.:format)          doges#create
#  new_user_doge GET    /users/:user_id/doges/new(.:format)      doges#new
# edit_user_doge GET    /users/:user_id/doges/:id/edit(.:format) doges#edit
#      user_doge GET    /users/:user_id/doges/:id(.:format)      doges#show
#                PATCH  /users/:user_id/doges/:id(.:format)      doges#update
#                PUT    /users/:user_id/doges/:id(.:format)      doges#update
#                DELETE /users/:user_id/doges/:id(.:format)      doges#destroy
#          users GET    /users(.:format)                         users#index
#                POST   /users(.:format)                         users#create
#       new_user GET    /users/new(.:format)                     users#new
#      edit_user GET    /users/:id/edit(.:format)                users#edit
#           user GET    /users/:id(.:format)                     users#show
#                PATCH  /users/:id(.:format)                     users#update
#                PUT    /users/:id(.:format)                     users#update
#                DELETE /users/:id(.:format)                     users#destroy
#        sign_in GET    /sign_in(.:format)                       sessions#new
#       sessions POST   /sessions(.:format)                      sessions#create
#                DELETE /sessions(.:format)                      sessions#destroy