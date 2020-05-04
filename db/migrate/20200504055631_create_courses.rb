class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :code
      t.string :descriptive_title, limit: 255
      t.integer :units

      t.timestamps
    end

    add_reference :course_classes, :course, null: true, foreign_key: true
  end
end
