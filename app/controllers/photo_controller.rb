class PhotoController < ApplicationController

  def photo_list
    @photos = Photo.order(created_at: :desc)
    render({:template => "photo/index" })
  end

  def photo_info

    @photo_id = params.fetch("photo_id")

    @photo = Photo.where(:id => @photo_id).at(0)

    @comments = @photo.comments

    render({:template => "photo/show"})
  end
  
end
