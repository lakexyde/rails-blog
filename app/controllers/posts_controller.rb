class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all.order("created_at DESC")
  end
 
  def show
    
  end
 
  def new
    @post = Post.new
  end

  def create
   @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post has successfully been saved"
    else
      flash[:notice] = "Post  was not saved"
    end
    redirect_to root_url
  end
  
  def edit
    
  end
  
  def update
    @post.update_attributes(post_params)
    @post.updated_at = Time.now
    redirect_to @post
  end
  
  def destroy
    
    @post.destroy
    redirect_to  root_url
  end

  private
  
  def find_post
    @post = Post.find(params[:id])
  end
  def post_params
    params.require(:post).permit(:title, :desc, :body)
  end
end
