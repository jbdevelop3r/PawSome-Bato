class ReviewsController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @review = @user.reviews.build(review_params)
        @review.reviewer = current_user.email
        if @review.save 
            redirect_to user_path(params[:user_id])
        end
      end
    
      private
        def review_params
          params.require(:review).permit(:rating, :comment)
        end
end
