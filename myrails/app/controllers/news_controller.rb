class NewsController < ApplicationController
	def index
		
  		@report3s = Report.joins(:category).where('categories.name' => 'Tin giáo dục').limit(4)
  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end
  	def show
  		@report3s = Report.joins(:category).where('categories.name' => 'Tin giáo dục').limit(4)
  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end
end