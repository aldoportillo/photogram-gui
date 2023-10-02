Rails.application.routes.draw do

  get("/", controller: "user", action: "home")

  get("/users", controller: "user", action: "user_list")
  get("/users/:user_id", controller: "user", action: "user_profile")

  get("/photos", controller: "photo", action: "photo_list")
  get("/photos/:photo_id", controller: "photo", action: "photo_info")

end
