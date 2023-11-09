Rails.application.routes.draw do
  # Defines the root path route ("/")
  get("/", { :controller => "boards", :action => "index" })

  # Routes for the Post resource:

  post("/insert_post", { :controller => "posts", :action => "create" })  # CREATE
  post("/insert_post/:board_id", { :controller => "posts", :action => "create_on_board_show" })
  get("/posts", { :controller => "posts", :action => "index" })  # READ
  get("/posts/:path_id", { :controller => "posts", :action => "show" })  # READ
  post("/modify_post/:path_id", { :controller => "posts", :action => "update" })  # UPDATE
  get("/delete_post/:path_id", { :controller => "posts", :action => "destroy" })  # DELETE

  #------------------------------
  # Routes for the Board resource:

  post("/insert_board", { :controller => "boards", :action => "create" })  # CREATE
  get("/boards", { :controller => "boards", :action => "index" })  # READ
  get("/boards/:path_id", { :controller => "boards", :action => "show" })  # READ
  post("/modify_board/:path_id", { :controller => "boards", :action => "update" })  # UPDATE
  get("/delete_board/:path_id", { :controller => "boards", :action => "destroy" })  # DELETE

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html  

  # root "articles#index"
end
