class FeedController < ApplicationController
  def index
    @articles = Article.all
  end
end
