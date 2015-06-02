class CapsulesController < ApplicationController
	def index
		@capsules = current_user.capsules
	end

	def show
		@capsule = Capsule.find(params[:id])
	end

	def delete
		@capsules = current_user.capsules
	end

	def create
		@capsule = Capsule.new(params.require(:post).permit(:release_date, :title, :user_id))
		if @capsule.save

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
