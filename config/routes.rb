Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "dishes#index"
  # Routes for the Meal plan resource:

  # CREATE
  get("/meal_plans/new", { :controller => "meal_plans", :action => "new_form" })
  post("/create_meal_plan", { :controller => "meal_plans", :action => "create_row" })

  # READ
  get("/meal_plans", { :controller => "meal_plans", :action => "index" })
  get("/meal_plans/:id_to_display", { :controller => "meal_plans", :action => "show" })

  # UPDATE
  get("/meal_plans/:prefill_with_id/edit", { :controller => "meal_plans", :action => "edit_form" })
  post("/update_meal_plan/:id_to_modify", { :controller => "meal_plans", :action => "update_row" })

  # DELETE
  get("/delete_meal_plan/:id_to_remove", { :controller => "meal_plans", :action => "destroy_row" })

  #------------------------------

  # Routes for the Cuisine resource:

  # CREATE
  get("/cuisines/new", { :controller => "cuisines", :action => "new_form" })
  post("/create_cuisine", { :controller => "cuisines", :action => "create_row" })

  # READ
  get("/cuisines", { :controller => "cuisines", :action => "index" })
  get("/cuisines/:id_to_display", { :controller => "cuisines", :action => "show" })

  # UPDATE
  get("/cuisines/:prefill_with_id/edit", { :controller => "cuisines", :action => "edit_form" })
  post("/update_cuisine/:id_to_modify", { :controller => "cuisines", :action => "update_row" })

  # DELETE
  get("/delete_cuisine/:id_to_remove", { :controller => "cuisines", :action => "destroy_row" })

  #------------------------------

  # Routes for the Follow request resource:

  # CREATE
  get("/follow_requests/new", { :controller => "follow_requests", :action => "new_form" })
  post("/create_follow_request", { :controller => "follow_requests", :action => "create_row" })

  # READ
  get("/follow_requests", { :controller => "follow_requests", :action => "index" })
  get("/follow_requests/:id_to_display", { :controller => "follow_requests", :action => "show" })

  # UPDATE
  get("/follow_requests/:prefill_with_id/edit", { :controller => "follow_requests", :action => "edit_form" })
  post("/update_follow_request/:id_to_modify", { :controller => "follow_requests", :action => "update_row" })

  # DELETE
  get("/delete_follow_request/:id_to_remove", { :controller => "follow_requests", :action => "destroy_row" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  get("/comments/new", { :controller => "comments", :action => "new_form" })
  post("/create_comment", { :controller => "comments", :action => "create_row" })

  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  get("/comments/:id_to_display", { :controller => "comments", :action => "show" })

  # UPDATE
  get("/comments/:prefill_with_id/edit", { :controller => "comments", :action => "edit_form" })
  post("/update_comment/:id_to_modify", { :controller => "comments", :action => "update_row" })

  # DELETE
  get("/delete_comment/:id_to_remove", { :controller => "comments", :action => "destroy_row" })

  #------------------------------

  # Routes for the Favorite resource:

  # CREATE
  get("/favorites/new", { :controller => "favorites", :action => "new_form" })
  post("/create_favorite", { :controller => "favorites", :action => "create_row" })

  # READ
  get("/favorites", { :controller => "favorites", :action => "index" })
  get("/favorites/:id_to_display", { :controller => "favorites", :action => "show" })

  # UPDATE
  get("/favorites/:prefill_with_id/edit", { :controller => "favorites", :action => "edit_form" })
  post("/update_favorite/:id_to_modify", { :controller => "favorites", :action => "update_row" })

  # DELETE
  get("/delete_favorite/:id_to_remove", { :controller => "favorites", :action => "destroy_row" })

  #------------------------------

  # Routes for the Dish resource:

  # CREATE
  get("/dishes/new", { :controller => "dishes", :action => "new_form" })
  post("/create_dish", { :controller => "dishes", :action => "create_row" })

  # READ
  get("/dishes", { :controller => "dishes", :action => "index" })
  get("/dishes/:id_to_display", { :controller => "dishes", :action => "show" })

  # UPDATE
  get("/dishes/:prefill_with_id/edit", { :controller => "dishes", :action => "edit_form" })
  post("/update_dish/:id_to_modify", { :controller => "dishes", :action => "update_row" })

  # DELETE
  get("/delete_dish/:id_to_remove", { :controller => "dishes", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
