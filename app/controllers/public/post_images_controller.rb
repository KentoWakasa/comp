class Public::PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

  def create
    post_image = PostImage.new(post_image_params
    )
    post_image.save
    redirect_to post_images_index_path
  end

  def index
    @post_image = PostImage.all
  end

  def show
    @post_image = PostImage.find(params[:id])
  end

  def edit
    @post_image = PostImage.find(params[:id])
  end

  def update
    post_image = PostImage.find(params[:id])
    post_image.update(post_image_params)
    redirect_to post_images_index_path(post_image.id)
  end

  def destroy
    post_image = PostImage.find(params[:id])
    post_image.destroy
    redirect_to post_images_index_path
  end


  private

  def post_image_params
    params.require(:post_image).permit(:title, :body, :image)
  end

end