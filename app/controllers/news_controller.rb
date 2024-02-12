class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def show
    @news = News.find()
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  private 
  def news_params 
    params.require(:article).permit(:title, :body)
  end 
  def find_params 
    @news = Article.find(params[:id])
  end 
end
