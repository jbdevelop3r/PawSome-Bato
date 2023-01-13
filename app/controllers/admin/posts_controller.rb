class Admin::PostsController < ApplicationController
    before_action :set_user
    before_action :set_post, only: [ :show, :destroy]
    def index
        @posts = @user.posts
    end

    def show
    end

    def destroy
        if @post.destroy
            redirect_to admin_user_posts_path, notice: 'Post was successfully destroyed.'
        else
            render :show
        end
    end

    private
        def set_user
            @user = User.find(params[:user_id])
        end

        def set_post
            @post = @user.posts.find(params[:id])
        end
end