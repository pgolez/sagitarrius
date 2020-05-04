class CreateCourseClasses < ActiveRecord::Migration[6.0]
  def up
    create_table :course_classes do |t|
      t.string :code
      t.integer :max_enrollment, default: 0, null: false
      t.timestamps
    end
  end

  def down
    drop_table :course_classes, if_exists: true
  end
end
