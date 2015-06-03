class CapsulesController < ApplicationController
	def index
		@capsules = current_user.capsules
		@capsule = Capsule.new
	end

	def show
		@capsule = Capsule.find(params[:id])
		p release = @capsule.release_date.to_datetime
		p reday = release.day
		remonth = release.month
		reyear = release.year
		date = Time.now
		day = date.day
		month = date.month
		year = date.year
		@year_remaining =  reyear - year 
		@month_remaining = remonth - month 
		@day_remaining = reday - day
		# @image = ImagesUploader.retrieve
		# @video = VideosUploader.retrieve
	end

	def delete
		@capsules = current_user.capsules
	end

	def create
		@user = current_user
		@capsule = Capsule.new(params.require(:capsule).permit(:title, :release_date).merge(user: current_user))
		if @capsule.save
			redirect_to @capsule, notice: "New capsule created!"
		else
			render :index
		end
	end

	def update
		@capsule = Capsule.find(params[:id])
	end

	def destroy
		@capsule = Capsule.find(params[:id])
		if @capsule.destroy
			redirect_to current_user.capsules
		else
			redirect_to capsules_remove_path, notice: "There was a problem deleting this capsule"
		end
	end
end
