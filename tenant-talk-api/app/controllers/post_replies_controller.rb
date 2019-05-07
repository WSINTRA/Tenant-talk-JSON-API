class PostRepliesController < ApplicationController
	  before_action :find_post_reply, only: [:update]
  
  def index
    @post_reply = PostReply.all
    render json: @post_reply
  end



  def create
    @post_reply = PostReply.create(post_reply_params)
    render json: @post_reply, status: :accepted
  end 
 
  def update
    @post_reply.update(post_reply_params)
    if @post_reply.save
      render json: @post_reply, status: :accepted
    else
      render json: { errors: @post_reply.errors.full_messages }, status: :unprocessible_entity
    end
  end
 
  private
 
  def post_reply_params
    params.permit(:post_id, :reply_id)
  end
 
  def find_post_reply
    @post_reply = PostReply.find(params[:id])
  end
end


