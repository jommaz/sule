class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params.require(:post).permit(:title, :body, :capsule_id, :unique)
		if @post.save
			redirect_to current_user.capsules
		else
			redirect_to current_user.capsules
		end 
	end
end
