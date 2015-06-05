class ImagesController < ApplicationController
  before_action :authenticate_user!

  def new
    @capsule = Capsule.find(params[:capsule_id])
    @image = Image.new(capsule_id: params[:capsule_id])
  end

  def create
    @capsule = Capsule.find(params[:capsule_id])
    @image = Image.new(params.require(:image).permit(:image).merge(capsule_id: params[:capsule_id]))
  	if @image.save
  		redirect_to @capsule
      p @image.image_url
  	else
  		redirect_to capsules_path
  	end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
  end

end
