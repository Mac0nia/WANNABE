class NewsController < ApplicationController
  def index
    @news_items = News.all
  end

  def show
    @news_items = News.find(params[:id])
  end
end
