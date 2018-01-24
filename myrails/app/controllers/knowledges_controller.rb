class KnowledgesController < ApplicationController
	def index

  		@report4s = Report.joins(:category).where('categories.name' => 'Trao đổi kiến thức').limit(4)
		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end
  	def show

  		@report4s = Report.joins(:category).where('categories.name' => 'Trao đổi kiến thức').limit(4)
		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end
end
