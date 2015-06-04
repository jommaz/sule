class PostsController < ApplicationController
	authenticate_user!

	def new
		@post = Post.new
	end

	def create
		@capsule = Capsule.find(params[:params])
		@post = Post.new(params.require(:post).permit(:title, :body, :capsule_id, :unique)
		if @post.save
			redirect_to @capsule
		else
			redirect_to current_user.capsules
		end 
	end
end
