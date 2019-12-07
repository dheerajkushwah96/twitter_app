class CommentsController < ApplicationController
	before_action :authenticate_user!
	def index
		@comments = Comment.all
	end

	def new
		@tweet = Tweet.find_by(id: params[:tweet_id])
		@comment = @tweet.comments.new
	end

	def create
		@tweet = Tweet.find(params[:tweet_id])
		@comment =@tweet.comments.build(comments_params)
		if @comment.save
			redirect_to tweets_path
		else
			render 'new'
		end
	end

	private
	def comments_params
		params.require(:comment).permit(:name, :tweet_id)
	end
end
