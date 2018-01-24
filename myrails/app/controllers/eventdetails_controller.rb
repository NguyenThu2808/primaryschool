  class EventdetailsController < ApplicationController
	def index
		@new = Event.find(1)
  		
		@report1s = Report.select("id, picture, title, hot").where(hot: true).last(3)
	end
	
end