class UserController < ApplicationController

  def home
    @users = User.order(:username)
    render({:template => "user/index"})
  end

  def user_list
    @users = User.order(:username)
    render({:template => "user/index" })
  end

  def user_profile
    username = params.fetch(:username)
    
    @user = User.where({:username => username}).at(0)

    @user_photos = @user.own_photos

    render({:template => "user/show"})
  end

  def add_user
    @username = params.fetch("input_username")

    new_user = User.new

    new_user.username = @username

    if new_user.valid?
      new_user.save
      redirect_to("/users/#{@username}", { :notice => "User created successfully." })
    else
      redirect_to("/users", { :notice => "User failed to create successfully." })
    end
  end
  def update_user
    @user_id = params.fetch("user_id")
    @new_username = params.fetch("input_username")

    user = User.where(:id => @user_id).at(0)

    user.username = @new_username

    if user.valid?
      user.save
      redirect_to("/users/#{@new_username}", { :notice => "User username updated successfully." })
    else
      redirect_to("/users", { :notice => "User failed to update username." })
    end
  end

end
