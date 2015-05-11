class DocsController < ApplicationController
  before_action :set_doc, only: [:destroy]
  def index
  end

  def new
  end

  def show
    path = File.join(Rails.root, "public", "uploads", "doc", "file", "#{@doc.id}")
    file = Dir.entries(path).sort[2]
    send_file(File.join(path, file)
  end

  def create
    @doc = Doc.new(doc_params)
    @doc.name = doc_params[:file].original_filename
    if @doc.save
    end
  end

  def destroy
    @doc_id = @doc.id
    @doc.destroy
  end

  def update
  end


  private
    def doc_params
      params.require(:doc).permit(:name, :folder_id, :file)
    end

    def set_doc
      @doc = Doc.find(params[:id])
    end
end
