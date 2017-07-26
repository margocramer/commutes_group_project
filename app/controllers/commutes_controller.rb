class CommutesController < ApplicationController
  before_action :authenticate_user!

  def show
    @commute = Commute.find(params[:id])
  end

  def new
    @commute = current_user.commutes.new
  end

  def create
    @commute = current_user.commutes.new(commute_params)
    if @commute.save
      flash[:notice] = "Commute added successfully"
      redirect_to commute_path(@commute)
    else
      render :new
    end
  end

  private

  def commute_params
    params.require(:commute).permit(:starting_location, :ending_location, :mode, :time, :description)
  end
end
