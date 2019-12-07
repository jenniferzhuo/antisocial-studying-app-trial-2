Rails.application.routes.draw do

  # Routes for the Follow request resource:

  # CREATE
  match("/insert_follow_request", { :controller => "follow_requests", :action => "create", :via => "post"})
          
  # READ
  match("/sent_follow_requests", { :controller => "follow_requests", :action => "index", :via => "get"})
  
  match("/follow_requests/:id_from_path", { :controller => "follow_requests", :action => "show", :via => "get"})

  match("/close_friends", { :controller => "follow_requests", :action => "index_accepted_requests", :via => "get"})
  
  # UPDATE
  
  match("/modify_follow_request/:id_from_path", { :controller => "follow_requests", :action => "update", :via => "post"})

  match("/accept_follow_request/", { :controller => "follow_requests", :action => "accept_friend_request", :via => "post"})
  
  # DELETE
  match("/delete_follow_request/:id_from_path", { :controller => "follow_requests", :action => "destroy", :via => "get"})

  #------------------------------

  # Routes for the Visit resource:

  # CREATE
  match("/insert_visit", { :controller => "visits", :action => "create", :via => "post"})
          
  # READ
  match("/", { :controller => "visits", :action => "index", :via => "get"})
  
  match("/visits/:id_from_path", { :controller => "visits", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_visit/:id_from_path", { :controller => "visits", :action => "update", :via => "post"})
  
  # CHECK OUT

  match("/check_out_visit", {:controller => "visits", :action => "check_out", :via => "get"})

  # DELETE
  match("/delete_visit/:id_from_path", { :controller => "visits", :action => "destroy", :via => "get"})

  #------------------------------

  match("/user", {:controller => "users", :action => "individual_account", :via => "get"})
  match("/close_friends", {:controller => "users", :action => "close_friend_locations", :via => "get"})
  match("/all_users", {:controller => "users", :action => "index", :via => "get"})

  # Routes for signing up

  match("/user_sign_up", { :controller => "users", :action => "new_registration_form", :via => "get"})
  
  # Routes for signing in
  match("/user_sign_in", { :controller => "user_sessions", :action => "new_session_form", :via => "get"})
  
  match("/user_verify_credentials", { :controller => "user_sessions", :action => "add_cookie", :via => "post"})
  
  # Route for signing out
  
  match("/user_sign_out", { :controller => "user_sessions", :action => "remove_cookies", :via => "get"})
  
  # Route for creating account into database 

  match("/post_user", { :controller => "users", :action => "create", :via => "post" })
  
  # Route for editing account
  
  match("/edit_user", { :controller => "users", :action => "edit_registration_form", :via => "get"})
  
  match("/patch_user", { :controller => "users", :action => "update", :via => "post"})
  
  # Route for removing an account
  
  match("/cancel_user_account", { :controller => "users", :action => "destroy", :via => "get"})


  #------------------------------

  # Routes for the Location resource:

  # CREATE
  match("/insert_location", { :controller => "locations", :action => "create", :via => "post"})
          
  # READ
  match("/locations", { :controller => "locations", :action => "index", :via => "get"})
  
  match("/locations/:id_from_path", { :controller => "locations", :action => "show", :via => "get"})
  
  # UPDATE
  
  match("/modify_location/:id_from_path", { :controller => "locations", :action => "update", :via => "post"})
  
  # DELETE
  match("/delete_location/:id_from_path", { :controller => "locations", :action => "destroy", :via => "get"})

  #------------------------------

  # ======= Add Your Routes Above These =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
