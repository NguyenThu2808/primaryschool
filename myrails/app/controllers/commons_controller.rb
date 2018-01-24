class CommonsController < ApplicationController
	def sidebar
		@report1s = Report.select("id, picture, title, hot").where(hot: true).last(2)
	end
end