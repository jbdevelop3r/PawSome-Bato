class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_if_admin
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.where(availability: "available").order('created_at DESC')
  end

  def show
    @inquiry = @post.inquiries.find_by(inquirer_name: current_user.email)
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to post_url(@post), notice: 'Post created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      # Handle successful update
      redirect_to @post, notice: 'Post updated.'
    else
      # Handle unsuccessful update
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post deleted.'
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end


  def post_params
    params.require(:post).permit(:owner, :pet_name, :category, :breed, :price, :description, :pick_up, :location, :thumbnail, :availability, :advertisement)
  end

  
    def check_if_admin
      if current_user.admin?
        redirect_to '/admin/users'
      end
    end
end
