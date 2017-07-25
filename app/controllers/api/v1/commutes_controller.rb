class Api::V1::CommutesController < ApplicationController
  def index
    render json: Commute.all
  end

  def show
    render json: Commute.find(params[:id])
  end

end
