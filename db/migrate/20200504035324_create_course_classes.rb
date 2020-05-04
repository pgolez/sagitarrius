class CreateCourseClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :course_classes do |t|

      t.timestamps
    end
  end
end
