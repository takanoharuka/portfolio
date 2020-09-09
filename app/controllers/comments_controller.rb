class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    if comment.save
      flash[:success] = "コメントしました"
    else
      flash[:success] = "コメントできませんでした"
    end
  end

  def destroy
    # tweet = Tweet.find_by(params[:tweet_id])
    # comment = tweet.comments.find_by(id: params[:id])
    # # binding.pry
    # comment.destroy
    Comment.find_by(id: params[:id], tweet_id: params[:tweet_id]).destroy
    # redirect_to tweet_path
    
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end
