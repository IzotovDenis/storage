class FoldersController < ApplicationController
  before_action :set_folder, only: [:show, :destroy]
  before_action :set_folder_tree
  def index
    @new_folder = Folder.new
    @folders = Folder.roots
    @docs = Doc.where("folder_id IS NULL")
    @new_doc = Doc.new()
  end

  def new
  end

  def create
    @folder = Folder.new(folder_params)
    if @folder.save
      redirect_to @folder.root
    end
  end

  def destroy
    @folder.descendants.each do |folder|
      folder.destroy
    end
    @id = @folder.id
    @folder.destroy
  end

  def show
    @folders = @folder.children
    @new_folder = Folder.new(:parent_id=>@folder.id)
    @new_doc = Doc.new(:folder=>@folder)
  end

  def edit
  end

  def update
  end

  private
    def folder_params
      params.require(:folder).permit(:name, :parent_id)
    end

    def set_folder
      @folder = Folder.find(params[:id])
    end

    def set_folder_tree
      @folder_tree = Folder.roots
    end
end
