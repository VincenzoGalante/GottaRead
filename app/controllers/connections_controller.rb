class ConnectionsController < ApplicationController

  def new
    @connection = Connection.new
    @articles = Article.all
  end

  def create
    @connection = Connection.new(connection_params)
    if @connection.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def connection_params
    params.require(:connection).permit(:article_id, :folder_id)
  end

end
