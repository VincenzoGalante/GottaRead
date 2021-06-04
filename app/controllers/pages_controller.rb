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
  end
end
