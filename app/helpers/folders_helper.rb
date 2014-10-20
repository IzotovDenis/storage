module FoldersHelper

	def folders_tree
		Folder.arrange_serializable
	end


	def collapse_in(folder)
		return '' unless @folder
		return 'in' if @folder.path_ids.include? folder
	end

end
