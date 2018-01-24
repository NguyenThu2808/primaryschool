class AlbumclubsController < ApplicationController
	def index
  		@album3s = Album.select("id, name, picture").where("name LIKE ?", "Câu lạc bộ%")

  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end

  	def show
  		@album3s = Album.select("id, name, picture").where("name LIKE ?", "Câu lạc bộ%")

  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end
end