class TrainingregulationsController < ApplicationController
	def index
  		@album3s = Category.where('name' => 'Quy chế đào tạo')

  		@report1s = Report.select("picture, title, hot").where(hot: true).last(3)
  	end
end