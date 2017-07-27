class CommutesController < ApplicationController

  def create
    @commute = Commute.new(commute_params)
    if @commute.save
      flash[:alert] = "Commute added successfully"
      redirect_to commute_path(@commute)
    else
      flash[:errors] = @commute.errors.full_messages.to_sentence
      render :new
    end
  end

  def show
      @commute = Commute.find(params[:id])
      @reviews = @commute.reviews
    # @review = Review.new
  end

end
