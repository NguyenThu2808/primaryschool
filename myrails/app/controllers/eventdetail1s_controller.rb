  class Eventdetail1sController < ApplicationController
	def index
		@new = Event.find(2)
  		
		@report1s = Report.select("id, picture, title, hot").where(hot: true).last(3)
	end
	
end