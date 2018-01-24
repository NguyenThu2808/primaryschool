class AlbumeventsController < ApplicationController
	def index
  		@album2s = Album.select("id, name, picture").where("name LIKE ?", "Sự kiện%")
  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end

  	def show
  		@album2s = Album.select("id, name, picture").where("name LIKE ?", "Sự kiện%")
  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end
end