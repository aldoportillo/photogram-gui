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
end
