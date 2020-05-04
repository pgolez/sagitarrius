class CourseClassesController < ApplicationController
	def index
		render json: CourseClass.all
	end
end
