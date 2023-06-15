class NewsController < ApplicationController
  def index
    @news = News.all
    if params[:query].present?
      @news = News.where(name: params[:query])
    else
      @news = News.all
    end
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    # @news.user = current_user
    if @news.save!
      redirect_to news_path(@news)
    else
      @news = News.new
      render 'news/show', status: :unprocessable_entity
    end
  end

  def show
    @news = News.find(params[:id])
  end



  private

  def news_params
    params.require(:news).permit(:title, :content, :photo)
  end
  
end
