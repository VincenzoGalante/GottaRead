class FoldersController < ApplicationController
  def index
    @folders = Folder.all
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(folders_params)
    @folder.user = current_user
      if @folder.save!
        redirect_to dashboard_path
      else
        render :new
      end
  end

  private

  def folders_params
    params.require(:folder).permit(:title, :description, :image, :color, :photo)
  end
end
