class Category < ApplicationRecord
	has_many :reports, dependent: :destroy
	validates_associated :reports
	validates :name, presence: true
end
