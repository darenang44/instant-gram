Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pics
  root 'pics#index'



#   Prefix Verb   URI Pattern              Controller#Action
#     pics GET    /pics(.:format)          pics#index
#          POST   /pics(.:format)          pics#create
#  new_pic GET    /pics/new(.:format)      pics#new
# edit_pic GET    /pics/:id/edit(.:format) pics#edit
#      pic GET    /pics/:id(.:format)      pics#show
#          PATCH  /pics/:id(.:format)      pics#update
#          PUT    /pics/:id(.:format)      pics#update
#          DELETE /pics/:id(.:format)      pics#destroy
#     root GET    /                        pics#index
end
