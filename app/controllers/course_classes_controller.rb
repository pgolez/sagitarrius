class CourseClassesController < ApplicationController

	def index
		@course_classes = CourseClass.all
	end

	def show
		@course_class = CourseClass.find(params[:id])
	end

	def create
		@course_class = CourseClass.new course_class_params
		@course_class.DRAFT!
		@course_class.save
	end

	private

	def course_class_params
		params.require(:course_class)
		.permit(:code, :max_enrollment, :course_id, :room_id, :semester_id)
	end

end
