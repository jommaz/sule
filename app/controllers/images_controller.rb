class ImagesController < ApplicationController
  authenticate_user!

  def new
  end

  def create
  	uploader = ImagesUploader.new
  	if uploader.store!
  		redirect_to @capsule
  	else
  		redirect_to edit_capsule_path
  	end
  end
end
