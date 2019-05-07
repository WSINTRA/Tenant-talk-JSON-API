class PostsController < ApplicationController

	  before_action :find_post, only: [:update]
  
  def index
    @post = Post.all
    render json: @post
  end

  def create
    @post = Post.create(post_params)
    render json: @post, status: :accepted
  end 
 
  def update
    @post.update(post_params)
    if @post.save
      render json: @post, status: :accepted
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
    end
  end
 
  private
 
  def post_params
    params.permit(:user_id, :message, :category)
  end
 
  def find_post
    @post = Post.find(params[:id])
  end
end

