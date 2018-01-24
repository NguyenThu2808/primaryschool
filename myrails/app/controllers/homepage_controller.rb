class HomepageController < ApplicationController
	def index
		@report4s = Report.select("title, description, picture").where('title' => 'Nâng tầm cho trường tiểu học ABC')

  		@reports = Report.select("title, description, picture, id").last(3)
#sự kiện
  		@event1s = Event.find(1)
  		@event2s = Event.find(2)
  		@event3s = Event.find(3)
  		@event4s = Event.find(4)

  		@report2s = Category.joins(:reports).select("reports.title, reports.picture, reports.description").first

  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)

  		@report5s = Report.where('title' => 'Kỷ niệm 28 năm Ngày Nhà giáo Việt Nam 20/11')
  	end
end