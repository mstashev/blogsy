class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  def show_posts
    @user = User.find_by(id: params[:id])
    render json: @user.posts
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
    @user = User.find_by(id: params[:id])

    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors.full_messages, status: 400
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "EXTERMINATE!!"}
  end

  private

  def user_params
    params.permit(:id, :username, :email_address, :bio)
  end

end
