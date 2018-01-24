class ContactsController < ApplicationController
	def index
  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end
end