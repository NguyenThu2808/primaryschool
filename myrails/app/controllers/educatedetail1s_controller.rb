class Educatedetail1sController < ApplicationController
	def index
		@edus = Educate.select("name, content")
		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
	end
end