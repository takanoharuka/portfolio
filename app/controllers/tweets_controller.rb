class TweetsController < ApplicationController
  before_action :set_tweet, only: :show

  def index
    @tweets =Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      renser :new
    end
  end

  def show
  end

  private
  def tweet_params
    params.require(:tweet).permit(:image,:title,:text).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end
