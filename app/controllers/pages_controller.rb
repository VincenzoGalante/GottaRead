class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @articles = Article.all
    @folders = Folder.all
  end

  def dashboard
    @folders = Folder.all
    @freediving_articles = Article.joins(:folders).where(folders:{title:"Freediving"}, status:["missed", "to_read"]).order("reminder ASC NULLS LAST")
    @neuroscience_articles = Article.joins(:folders).where(folders:{title:"Neuroscience"}, status:["missed", "to_read"]).order("reminder ASC NULLS LAST")
    @tennis_articles = Article.joins(:folders).where(folders:{title:"Tennis"}, status:["missed", "to_read"]).order("reminder ASC NULLS LAST")
    @articles = Article.all
    @missed_article = Article.missed
    #ordering descendant
    #@next_article = Article.where("#{reminder.to_date.to_s} > #{Date.today.to_s}")
    #ordering ascendant
  end


  def archive
    @articles = Article.joins(:folders).where(status: "done").order("reminder ASC NULLS LAST")
  end
end
