class Api::FollowingsController < ApplicationController
  def create
    @following = Following.new(following_params)
    if @following.save
      render json: @following
    else
      render json: @following.errors, status: 404
    end
  end

  def destroy
    @following = Following.find_by(
      follower_id: following_params[:follower_id],
      followee_id: following_params[:followee_id],
    )
    if @following.destroy
      render json: @following
    else
      render json: @following.errors, status: 404
    end
  end

  private

  def following_params
    params.require(:following).permit(:follower_id, :followee_id)
  end
end
