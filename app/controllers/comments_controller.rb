class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.html {redirect_to tweet_path(params[:tweet_id])}
      format.json
    end
  end

  def destroy
    @comments = Comment.find_by(id: params[:id], tweet_id: params[:tweet_id]).destroy
    # redirect_to tweet_path
    
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end
