class CapsulesController < ApplicationController
	before_action :set_capsule, only:[:show, :edit, :update, :destroy]
	before_action :set_new_user
	before_action :authenticate_user!, except:[:show]

	def index
		@capsules = current_user.capsules
	end

	def new
		@user = current_user
		@capsule = Capsule.new
	end

	def show
		@post = Post.new
		@image = Image.new
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
	end

	def delete
		@capsules = current_user.capsules
	end

	def create
		@user = current_user
		@capsule = Capsule.new(params.require(:capsule).permit(:title, :release_date, :template).merge(user: current_user))
		if @capsule.save
			redirect_to edit_capsule_path(@capsule.id), notice: 'You have created a new capsule'
		else
			render :index
		end
	end

	def update
		if @capsule.update(params.require(:capsule).permit(:post, :video, :image))
			redirect_to capsules_path, notice: "Your capsule has been updated"
		else
			render :show
		end
	end

	def destroy
		if @capsule.destroy
			redirect_to edit_user_registration_path
		else
			redirect_to capsules_remove_path, notice: "There was a problem deleting this capsule"
		end
	end

	private

	def set_capsule
		@capsule = Capsule.find(params[:id])
	end

	def set_new_user
		@new_user = User.new
	end
end
