class Schedule < ApplicationRecord
	mount_uploader :picture, PictureUploader
	validates :name, :picture, presence:  true
end
