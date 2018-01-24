  class KnowledgedetailsController < ApplicationController
	  def index
		  @news = Category.find(params[:knowledge_id])

  		@new1s = @news.reports.find(params[:id])
  		
  		@report1s = Report.select("id, picture, title, hot").where(hot: true).last(3)
  	end


  	def show
      
	   	@news = Category.find(params[:knowledge_id])

  		@new1s = @news.reports.find(params[:id])
  		
  		@report1s = Report.select("id, picture, title, hot").where(hot: true).last(3)
  	end
  end