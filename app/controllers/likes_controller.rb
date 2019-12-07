class LikesController < ApplicationController

  def create
    @like = current_user.likes.build :tweet_id => params[:tweet_id]
    @like.save
    redirect_to tweets_path
  end
end
