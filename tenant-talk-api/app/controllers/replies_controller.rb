class RepliesController < ApplicationController
		  before_action :find_replies, only: [:update]
  

  def create
    @replies = Reply.create(replies_params)
    render json: @replies, status: :accepted
  end 
 
  def update
    @replies.update(replies_params)
    if @replies.save
      render json: @replies, status: :accepted
    else
      render json: { errors: @replies.errors.full_messages }, status: :unprocessible_entity
    end
  end
 
  private
 
  def replies_params
    params.permit(:message, :user_id)
  end
 
  def find_replies
    @replies = Reply.find(params[:id])
  end

end
