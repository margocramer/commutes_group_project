class Api::V1::CommutesController < ApplicationController
  def index
    render json: Commute.all
  end

  def show
    @commute = { commute: Commute.find(params[:id])}
    @reviews = { reviews: Review.where(commute_id: params[:id]) }

    commute_reviews = @commute.merge(@reviews)
    render json: commute_reviews, adapter: :json
  end
end
