class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  include MetaTagsHelper

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  def dashboard
    @folders = Folder.all
    @freediving_articles = Article.joins(:folders).where(folders:{title:"Freediving"})
    @neuroscience_articles = Article.joins(:folders).where(folders:{title:"Neuroscience"})
    @tennis_articles = Article.joins(:folders).where(folders:{title:"Tennis"})
  end

end
