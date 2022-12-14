class Public::PostImagesController < ApplicationController
  def new
    @post_image = post_image.new
  end

  def create
    @post_image = post_image.new
    @post_image.save
    redirect_to post_images_index_path
  end

  def index
  end

  def show
  end

  def edit
  end



  private

  def post_image_params
    params.require(:post_image).permit(:title, :body, :image)
  end

end
