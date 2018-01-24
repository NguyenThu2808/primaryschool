class AlbumprosController < ApplicationController
	def index
  		@album1s = Album.select("id, name, picture").where("name LIKE ?", "Chương trình%")
  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end

  	def show
  		
  		@album1s = Album.select("id, name, picture").where("name LIKE ?", "Chương trình%")
  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end
end