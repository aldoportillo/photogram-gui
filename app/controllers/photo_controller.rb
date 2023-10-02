class PhotoController < ApplicationController

  def photo_list
    render({:template => "photo/index" })
  end

  def photo_info
    render({:template => "photo/show"})
  end
  
end
