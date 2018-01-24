class Album < ApplicationRecord
	has_many :pictures, dependent: :destroy
	validates_associated :pictures
	validates :name, presence: true
	mount_uploader :picture, PictureUploader
end

