class UserController < ApplicationController

  def home
    render({:template => "user/index"})
  end

  def user_list
    render({:template => "user/index" })
  end

  def user_profile
    render({:template => "user/show"})
  end
end
