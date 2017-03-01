class PostsController < ApplicationController

  before_action :find_post, only: [:show, :destroy, :upvote]

  def index
    if params[:user_id]
      @user = User.find params[:id]
      @posts = @user.posts
    else
      @posts = Post.all
    end
    render json: @posts
  end

  def show
    render json: @post
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post
    else
      render json: @post.errors.full_messages, status: 400
    end
  end

  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors.full_messages, status: 400
    end
  end

  def upvote
    @post.increment!(:upvote)
    render json: @post
  end


  def destroy
    @post.destroy
    render json: {message: "DELETE!!"}, status: 200
  end

  private

  def post_params
    params.permit(:id, :title, :body, :upvote)
  end

  def find_post
    @post = Post.find params[:id]
  end


end
