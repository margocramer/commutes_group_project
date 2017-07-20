class Api::V1::CommutesController < ApplicationController
  def index
    render json: Commute.all
  end
end
