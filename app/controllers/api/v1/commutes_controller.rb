class Api::V1::CommutesController < ApplicationController
  def index
    render json: Commute.all
  end

  def mine
    # @user = User.find(params[:id])
    # @posts = @user.posts
    # render json: Commute.find(params[:id])
    # users = User.where(name: 'Oscar')
    # render json: Commute.where(params[:id])
    render json: Commute.where(user_id: current_user.id)
  end

  def show
    render json: Commute.find(params[:id])
  end

end
