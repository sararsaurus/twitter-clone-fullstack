class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all.order(created_at: :asc)
    render template: "tweets/index"
  end
end
