class RelationshipsController < ApplicationController
	def create
		@relationship = current_user.relationships.new(follower_id: params[:follower_id])
		@relationship.save
		redirect_to tweets_path
	end

	def relationships_params
		params.require(:relationship).permite(:user_id, :followers_id)
	end
end
