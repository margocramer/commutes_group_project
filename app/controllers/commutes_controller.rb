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
  end

  def new
    @commute = Commute.new
  end

  def edit
    @commute = Commute.find(params[:id])
  end

  def update
    @commute = Commute.find(params[:id])
    if @commute.update(commute_params)
      redirect_to @commute, notice: 'Commute was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @commute = Commute.find(params[:id])
    @commute.destroy
    redirect_to root_path, notice: 'Commute was successfully destroyed.'
  end

  private

  def commute_params
    params.require(:commute).permit(:starting_location, :ending_location, :mode, :time, :description, :user_id)
  end

end
