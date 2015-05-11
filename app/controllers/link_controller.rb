class LinkController < ApplicationController
	layout false
  def index
  	if params[:obj] == "doc"
  		@docs = Doc.where(:id=>params[:id])
    end
    if params[:obj] == "folder"
    	@docs = Doc.where(:folder_id=>params[:id])
    end
  end
end
