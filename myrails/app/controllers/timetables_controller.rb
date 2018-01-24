class TimetablesController < ApplicationController
	def index
  		@album3s = Schedule.where("name LIKE ?", "THỜI KHÓA BIỂU%")

  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end
end