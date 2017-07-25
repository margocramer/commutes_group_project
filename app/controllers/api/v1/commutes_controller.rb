class Api::V1::CommutesController < ApplicationController
  def index
    render json: Commute.all

    if params[:search]
      @commutes = Commute.search(params[:search]).order("created_at DESC")
    else
      @commutes = Commute.all.order('created_at DESC')
    end
  end

  def show
    render json: Commute.find(params[:id])
  end

  def new
    @commute = Commute.new
  end

  def create
    @commute = Commute.new(commute_params)

    if @commute.save
      redirect_to commute_path(@commute)
    else
      render :new
    end
  end

  private
   def commute_params
     params.require(:commute).permit(:starting_location, :ending_location, :mode, :time, :description, :rating)
   end
end
