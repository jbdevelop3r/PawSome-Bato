class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.where(admin: false || nil)
  end

  # GET /users/1 or /users/1.json
  def show
    @posts = @user.posts
  end

  # GET /users/new
  # def new
  #   @user = User.new
  # end

  # POST /users or /users.json
  # def create
  #   @user = User.new(user_params)
  #   # @user.skip_confirmation!


  #   respond_to do |format|
  #     if @user.save
  #       # AdminConfirmationMailer.signed_up(@user).deliver_now
          # redirect_to admin_user_url(@user)
  #     else
          # render :new
  #     end
  #   end
  # end

  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        redirect_to admin_user_path(@user), notice: "Account successfully updated"
      else
        render :edit
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.posts.destroy_all
    @user.destroy
    redirect_to admin_users_path
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password)
    end

    def check_if_admin
      redirect_to authenticated_root_path unless current_user.admin?
    end
end