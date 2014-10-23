class Folder < ActiveRecord::Base
	has_ancestry
	has_many :docs, dependent: :destroy
end
