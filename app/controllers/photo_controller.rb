class PhotoController < ApplicationController

  def photo_list
    @photos = Photo.order(created_at: :desc)
    render({:template => "photo/index" })
  end

  def photo_info
    render({:template => "photo/show"})
  end
  
end
