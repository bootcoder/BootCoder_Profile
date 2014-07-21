class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create!(params[:comment])
		redirect_to @post
	end

	private

	def comment_params
		params.require(:comment).permit(:comment)
	end
end
