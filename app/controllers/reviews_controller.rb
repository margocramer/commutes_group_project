class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @commute = Commute.find(params[:commute_id])
  end

  def create
    if current_user
      @review = Review.new(review_params)
      @commute = Commute.find(params[:commute_id])

      @review.user = current_user

      if @review.save
        redirect_to root_path,
        notice: "Review added successfully!"
      else
        render :new, notice: "There's been a problem!"
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :review_stars).merge(commute: Commute.find(params[:commute_id]))
  end
end
