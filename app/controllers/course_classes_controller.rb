class CourseClassesController < ApplicationController
	def index
		render json: CourseClass.all
	end

	def show
		render json: CourseClass.find(params[:id])
	end
end
