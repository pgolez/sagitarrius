class CreateSemesters < ActiveRecord::Migration[6.0]
  def up
    create_table :semesters do |t|
      t.string :name

      t.timestamps
    end

    add_reference :course_classes, :semester, null: false, foreign_key: true
  end

  def down
    remove_reference :course_classes, :semester
    drop_table :semesters
  end
end
