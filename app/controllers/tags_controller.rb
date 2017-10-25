class TagsController < ApplicationController
	def create
		post = Post.find(params[:post_id])
		@tag = Tag.new(tag_params)
		post.tags.create(tag_params)

		redirect_to post_path(id: post.id) 
	end

	def show
	end

	def new
	end

	def index
	end
	
	


	def tag_params 
		params.require(:tag).permit(:name, :post_id)
	end
end
