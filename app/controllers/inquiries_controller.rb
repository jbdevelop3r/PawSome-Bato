class InquiriesController < ApplicationController
  before_action :verify_user, only: [:index]

  def index
    @post = Post.find(params[:post_id])
    @inquiries = @post.inquiries
  end

  def create
		@post = Post.find(params[:post_id])
	 	@inquiry = @post.inquiries.create(params[:inquiry].permit(:inquirer_name))
		redirect_to post_path(@post)	
	end

	def destroy
		@post = Post.find(params[:post_id])
		@inquiry = @post.inquiries.find(params[:id])
		@inquiry.destroy
		redirect_to post_path(@post)
	end

  def verify_user
    redirect_to authenticated_root_path, notice: "You do not have access to that Post" unless Post.find(params[:post_id]).user_id == current_user.id
  end
end
