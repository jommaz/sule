class PostsController < ApplicationController
	def create
		@post = Post.new(params.require(:post).permit(:title, :body, :capsule_id))
		if @post.save
			redirect_to current_user.capsules
		else
			redirect_to current_user.capsules
		end 
	end
end
