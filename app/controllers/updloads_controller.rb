class UpdloadsController < ApplicationController
  def new
    @upload = Upload.new
  end

  def index
    @upload = Upload.all
  end

  def create
    @upload = Uploads.create(upload_params)
    if @upload.save
      redirect_to action: "index"
    else
      render json: {message: @upload.errors.full_message.join(',')}, :status => 400
    end
  end

  def destroy
    @upload = Upload.find(params[:id])
    if @upload.destroy
      render json: {message: "Eliminaste la image"}
    else
      render json: {message: @upload.errors.full_message.join(',')}
    end
  end

  private
  def upload_params
    params.require(:upload).permit(:image)
  end
end
