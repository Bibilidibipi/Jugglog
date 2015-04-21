class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in(@user)
      redirect_to root_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def index
    @users = User.where('id <> ?', current_user.id)
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render :show, formats: :json
  end

  def update
    @user = User.find(params[:id])
    @user.save!
    render :show, formats: :json
  end

  def search
    if params[:query].present?
      @users = User
        .where("username ~ ?", params[:query])
        .where('id <> ?', current_user.id)
    else
      @users = User.none
    end

    render json: @users
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :guest, :email)
  end
end
