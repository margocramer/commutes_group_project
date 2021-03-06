class ReviewsController < ApplicationController

  def new
    @stars = Review::STARS
    @review = Review.new
    @commute = Commute.find(params[:commute_id])
  end

  def create
    @stars = Review::STARS
    if current_user
      @review = Review.new(review_params)
      @commute = Commute.find(params[:commute_id])

      @review.user = current_user

      if @review.save
        ReviewMailer.receipt.deliver_now

        redirect_to @commute,
        notice: "Review added successfully!"
      else
        render :new, notice: "There's been a problem!"
      end
    else
      redirect_to root_path,
      alert: "You cannot add reviews until you are signed in"
    end
  end

  def edit
    @stars = Review::STARS
    @review = Review.find(params[:id])
    @commute = @review.commute
  end

  def update
    @stars = Review::STARS
    @review = Review.find(params[:id])
    @commute = @review.commute
    if @review.update(review_params)
      redirect_to @commute, notice: 'Review was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @commute = @review.commute
    @review.destroy
    redirect_to @commute, notice: 'Your review was successfully destroyed.'
  end

  private

  def review_params
    params.require(:review).permit(:comment, :review_stars).merge(commute: Commute.find(params[:commute_id]))
  end
end
