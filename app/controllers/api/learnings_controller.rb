class Api::LearningsController < ApplicationController
  def create
    @learning = Learning.new(learning_params)
    @learning.user = current_user

    if @learning.save
      render json: @learning
    else
      render json: @learning.errors, status: 404
    end
  end

  def update
    @learning = Learning.find(params[:id])

    if @learning.update(params.require(:learning).permit(:status))
      render json: @learning
    else
      render json: @learning.errors, status: 404
    end
  end

  def delete
    @learning = Learning.find(params[:id])

    @learning.destroy
    render json: @learning
  end

  private

  def learning_params
    params.require(:learning).permit(:pattern_id, :status)
  end
end
