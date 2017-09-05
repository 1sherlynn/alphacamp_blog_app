class CommentsController < ApplicationController

	def create
		post = Post.find(params[:post_id])
		@comment = Comment.new(comment_params)
		post.comments.create(comment_params)

		redirect_to post_path(id: post.id) 
	end

	def show
	end

	def new
	end

	def index
	end
	
	


	def comment_params 
		params.require(:comment).permit(:author, :body, :post_id)
	end


end
