class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @articles = Article.all
    @folders = Folder.all
  end

  def dashboard
    @folders = Folder.all
    @freediving_articles = Article.joins(:folders).where(folders:{title:"Freediving"})
    @neuroscience_articles = Article.joins(:folders).where(folders:{title:"Neuroscience"})
    @tennis_articles = Article.joins(:folders).where(folders:{title:"Tennis"})
    @articles = Article.all
    @missed_article = Article.missed
    # @next_article = Article.where("reminder < #{Date.today}")
  end
end
