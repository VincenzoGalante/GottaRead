class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def article_to_folder

  end

  private

  def article_params
    params.require(:article).permit(:title, :url, :note, :importance, :reminder)
  end
end
