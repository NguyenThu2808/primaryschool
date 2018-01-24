class Picture < ApplicationRecord
	mount_uploader :urlimage, PictureUploader
	belongs_to :album
	validates :name, :urlimage, presence: true
end
