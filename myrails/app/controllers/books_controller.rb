class BooksController < ApplicationController
	def index
		
  		@report5s = Report.joins(:category).where('categories.name' => 'Cẩm nang học tập').limit(4)
  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end

  	def show
  		@report5s = Report.joins(:category).where('categories.name' => 'Cẩm nang học tập').limit(4)
  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end
end
