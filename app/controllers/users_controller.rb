class UsersController < ApplicationController

  before_action :find_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors.full_messages, status: 400
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors.full_messages, status: 400
    end
  end

  def destroy
    @user.destroy
    render json: {message: "EXTERMINATE!!"}
  end

  private

  def user_params
    params.require(:user).permit(:username, :email_address, :bio)
  end

  def find_user
    @user = User.find params[:id]
  end

end
