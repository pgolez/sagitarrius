class CreateSchedules < ActiveRecord::Migration[6.0]
  def up
    create_table :schedules do |t|
      t.boolean :monday, default: false
      t.boolean :tuesday, default: false
      t.boolean :wednesday, default: false
      t.boolean :thurdady, default: false
      t.boolean :friday, default: false
      t.boolean :saturday, default: false
      t.boolean :sunday, default: false
      t.integer :time_start, null: false
      t.integer :time_end, null: false

      t.timestamps
    end

    add_reference :course_classes, :schedule, null: true, foreign_key: true
  end

  def down
    remove_reference :course_classes, :schedule
    drop_table :schedules
  end
end
