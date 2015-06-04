class VideosController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
  	uploader = VideoUploader.new
  	if uploader.store!
  		redirect_to @capsule
  	else
  		redirect_to edit_capsule_path
  	end
  end
end
