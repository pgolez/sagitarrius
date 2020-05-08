class CourseClassesController < ApplicationController

	def index
		@course_classes = CourseClass.all
	end

	def show
		@course_class = CourseClass.find(params[:id])
	end

	def create
		@course_class = CourseClassManager::Creator.process(create_course_class_params)
		render status: :created
	end

	def update
		@course_class = CourseClass.find(params[:id])
		CourseClassManager::Updater.process(@course_class, update_course_class_params)
	end

	private

	def create_course_class_params
		params.require(:course_class)
			.permit(:code, :max_enrollment, :course_id, :room_id, :semester_id, :schedule_id)
	end

	def update_course_class_params
		params.require(:course_class)
			.permit(:id, :max_enrollment, :course_id, :room_id, :semester_id, :status, :schedule_id)
	end

end
