class PhotosController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    render :json => @user.photos
  end

  def create
    params[:photo][:file_data] = params[:file_data]
    @photo = Photo.new(params[:photo])
    if @photo.save
      head :ok
    else
      render :json => @photo.errors
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

end
