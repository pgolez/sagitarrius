class CourseClassManager::Updater

	def self.process(course_class, attributes)
		object = new(course_class)
		object.run(attributes)
	end

	def initialize(course_class)
		@course_class = course_class
	end

	def run(attributes)
		@course_class.update! attributes
	end
end
