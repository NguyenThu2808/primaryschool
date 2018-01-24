class IntrosController < ApplicationController
	def index
		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
	end

	def facilities
		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
	end

	def teachers
		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)	
	end

	def tasks
		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)	
	end

	def mission_vision
		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)	
	end

	def core_values
		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)	
	end

	def organizational_structure
		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)	
	end
end