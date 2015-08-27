class AdUrl < ActiveRecord::Base
	mount_uploader :file, AdUploader

  validates :file, presence: true
end
