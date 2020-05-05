class CourseClassManager::Creator

	def self.process(attributes)
		object = new
		return object.run(attributes)
	end

	def run(attributes)
		course_class = CourseClass.new attributes
		course_class.DRAFT!
		course_class
	end
end
