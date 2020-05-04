class CreateCourseClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :course_classes do |t|
      t.integer :max_enrollment, default: 0, null: false
      t.timestamps
    end
  end
end
