
class Doc < ActiveRecord::Base
	mount_uploader :file, DocUploader
	belongs_to :folder

end
