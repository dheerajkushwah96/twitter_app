class AddTweetToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :tweet, :text
  end
end
