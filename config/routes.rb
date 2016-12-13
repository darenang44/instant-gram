Rails.application.routes.draw do
  devise_for :users
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

#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
end
