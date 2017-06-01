Rails.application.routes.draw do
  # Routes for the Event resource:
  # CREATE
  get "/events/new", :controller => "events", :action => "new"
  post "/create_event", :controller => "events", :action => "create"

  # READ
  get "/events", :controller => "events", :action => "index"
  get "/events/:id", :controller => "events", :action => "show"

  # UPDATE
  get "/events/:id/edit", :controller => "events", :action => "edit"
  post "/update_event/:id", :controller => "events", :action => "update"

  # DELETE
  get "/delete_event/:id", :controller => "events", :action => "destroy"
  #------------------------------

  # Routes for the Ticket resource:
  # CREATE
  get "/tickets/new", :controller => "tickets", :action => "new"
  post "/create_ticket", :controller => "tickets", :action => "create"

  # READ
  get "/tickets", :controller => "tickets", :action => "index"
  get "/tickets/:id", :controller => "tickets", :action => "show"

  # UPDATE
  get "/tickets/:id/edit", :controller => "tickets", :action => "edit"
  post "/update_ticket/:id", :controller => "tickets", :action => "update"

  # DELETE
  get "/delete_ticket/:id", :controller => "tickets", :action => "destroy"
  #------------------------------

  devise_for :users

  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  #------------------------------
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "events#index"

end
