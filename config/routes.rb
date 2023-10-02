Rails.application.routes.draw do

  get("/", controller: "", action: "")
  
  get("/users", controller: "", action: "")
  get("/users/:user_id", controller: "", action: "")

  get("/photos", controller: "", action: "")
  get("/photos/:photo_id", controller: "", action: "")

end
