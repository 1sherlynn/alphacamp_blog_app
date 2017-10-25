class PostsController < ApplicationController
 def new
    @post = Post.new

  end

  def create
    @post = Post.new(post_params)
    if @post.save
        flash[:notice] = 'Post was successfully created.'
        redirect_to post_path(id: @post.id)
        

      else
         flash.now[:notice] = "Post is not created."
        render 'new'
      end
  
  end

  def show
      @post = Post.find(params[:id])
      @comment = @post.comments.new
      @tag = @post.tags.new

      
  end

  def index
      @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash.now[:notice] = "Post has been successfully updated."
      redirect_to @post

    else
      flash[:notice] = "Post is not successfully updated."
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post has been successfully destroyed."
    redirect_to posts_path
    
  end
   
   private
    def post_params
      params.require(:post).permit(:title, :author, :text)
    end
end


