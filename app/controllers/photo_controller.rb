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

  def new_photo
    new_photo = Photo.new

    new_photo.image = params.fetch("input_image")
    new_photo.caption = params.fetch("input_caption")
    new_photo.owner_id = params.fetch("input_owner_id")

    if new_photo.valid?
      new_photo.save
      redirect_to("/photos/#{new_photo.id}", { :notice => "Photo posted successfully." })
    else
      redirect_to("/users", { :notice => "Photo failed to post successfully." })
    end

  end

  def update_photo
    photo_id =  params.fetch("photo_id")
    photo = Photo.where(:id => photo_id ).at(0)

    photo.image = params.fetch("input_image")
    photo.caption = params.fetch("input_caption")

    if photo.valid?
      photo.save
      redirect_to("/photos/#{photo_id}", { :notice => "Photo updated successfully." })
    else
      redirect_to("/users", { :notice => "Photo failed to update successfully." })
    end
  end

  def delete_photo
  end
  
end
