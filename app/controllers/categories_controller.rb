class CategoriesController < ApplicationController
	def index
		#cat = Category.new
		#cat.name = "bath"
		#cat.file_name = "bath1.jpg"
		#cat.date_time = DateTime.now
		#cat.save
		@categories = Category.all
	end

	def show
	end
end