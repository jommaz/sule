class CapsulesController < ApplicationController
	def index
		@new_user = User.new
		@capsules = current_user.capsules
		@capsule = Capsule.new
	end

	def show
		@new_user = User.new
		@capsule = Capsule.find(params[:id])
		# @image = ImageUploader.new
		release = @capsule.release_date.to_datetime
		reday = release.day
		remonth = release.month
		reyear = release.year
		date = Time.now
		day = date.day
		month = date.month
		year = date.year
		@year_remaining =  reyear - year 
		@month_remaining = remonth - month 
		@day_remaining = reday - day
	end

	def edit
		@capsule = Capsule.find(params[:id])
		# @image = ImageUploader.new
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
		if @capsule.update(params.require(:capsule).permit(:post, :video, :image))
			redirect_to capsules_path, notice: "Your capsule has been updated"
		else
			render :edit
		end
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
