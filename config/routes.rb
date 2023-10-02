Rails.application.routes.draw do

  get("/", controller: "user", action: "home")

  get("/users", controller: "user", action: "user_list")
  get("/users/:username", controller: "user", action: "user_profile")
  post("/add_user", controller: "user", action: "add_user")
  post("/update_user/:user_id", controller: "user", action: "update_user")


  get("/photos", controller: "photo", action: "photo_list")
  get("/photos/:photo_id", controller: "photo", action: "photo_info")
  post("/insert_photo_record", controller: "photo", action: "new_photo")
  post("/update_photo/:photo_id", controller: "photo", action: "update_photo")
  post("/delete_photo/:photo_id", controller: "photo", action: "delete_photo")
  
end
