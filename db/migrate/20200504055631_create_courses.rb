class CreateCourses < ActiveRecord::Migration[6.0]
  def up
    create_table :courses do |t|
      t.string :code, null: false
      t.string :descriptive_title, limit: 255
      t.integer :units, null: false

      t.timestamps
    end

    add_reference :course_classes, :course, null: false, foreign_key: true
  end

  def down
    remove_reference :course_classes, :course
    drop_table :courses
  end
end
