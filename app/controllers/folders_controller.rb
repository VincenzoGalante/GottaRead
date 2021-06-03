class FoldersController < ApplicationController
  def index
    @folders = Folder.all
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(folders_params)
      if @folder.save
        redirect_to root_path
      else
        render :new
      end
  end

  private

  def folders_params
    params.require(:folder).permit(:title, :description, :image, :color)
  end
end
