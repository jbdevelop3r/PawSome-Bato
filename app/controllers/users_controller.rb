class UsersController < ApplicationController
    def index
        @users = User.all
        @user = User.find(params[:id])
    end
    
    def show
        @user = User.find(params[:id])
        @posts = Post.where(user_id: params[:id])
        @connections = Connection.where(user_id: params[:id])
    end

    def update
        @user = User.find(params[:id]) 
        
        if @user.update(user_params)
            redirect_to user_path(params[:id])
        end
    end

    private
    def user_params
      params.require(:user).permit(:avatar)
    end

end
