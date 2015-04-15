class Api::PracticesController < ApplicationController
  def create
    @practice = Practice.new(practice_params)

    if @practice.save
      render json: @pracice
    else
      render json: @practice.errors, status: 404
    end
  end

  def destroy
    @practice = Practice.find(params[:id])
    @practice.destroy
    render json: @practice
  end

  private

  def practice_params
    params.require(:practice).permit(:learning_id)
  end
end
