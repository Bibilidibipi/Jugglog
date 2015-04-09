class Api::PatternsController < ApplicationController
  def create
    @pattern = Pattern.new(pattern_params)

    if @pattern.save
      render json: @pattern
    else
      render json: @pattern.errors, status: 404
    end
  end

  def index
    @patterns = Pattern.all
  end

  def show
    @pattern = Pattern.find(params[:id])
  end

  private

  def pattern_params
    params.require(:pattern).permit(:title, :body)
  end
end
