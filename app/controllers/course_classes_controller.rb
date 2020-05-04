class CourseClassesController < ApplicationController
	def index
		@course_classes = CourseClass.all
	end

	def show
		@course_class = CourseClass.find(params[:id])
	end
end
