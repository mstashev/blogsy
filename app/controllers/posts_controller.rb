class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find params[:id]
    render json: @post
  end

  def show_comments
    @post = Post.find params[:id]
    if @post.comments == nil
      render json: {message: "This post has no comments yet."}
    else
      render json: @post.comments
    end
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
    @post = Post.find params[:id]
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors.full_messages, status: 400
    end
  end

  def upvote
    @post = Post.find params[:id]
    post_upvote = @post.upvote + 1
    if @post.update(upvote: post_upvote)
      render json: @post
    else
      render json: @post.errors.full_messages, status: 400
    end
  end


  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    render json: {message: "DELETE!!"}, status: 200
  end

  private

  def post_params
    params.permit(:id, :title, :body, :upvote)
  end

end
