class UserController < ApplicationController

  def home
    render({ :template => "user/index.html.erb"})
  end

  def users_list

    render({ :template => "user/index.html.erb"})
  end

  def user_profile


    render({ :template => "user/show.html.erb"})

  end
