class CourseClassesController < ApplicationController
	def index
		course_class = CourseClass.new
		render json: [course_class]
	end
end
