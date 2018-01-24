class AlbumclubdetailsController < ApplicationController
	def index
		@album  = Album.find(params[:albumclub_id])
		@pictures = @album.pictures

  		# @albumpro1s = Album.joins(:pictures).select("pictures.id, pictures.name, urlimage").where('albums.name' => 'Chương trình Trung thu ấm áp 2017')

  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end
end