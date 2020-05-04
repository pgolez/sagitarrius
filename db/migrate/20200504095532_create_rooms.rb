class CreateRooms < ActiveRecord::Migration[6.0]
  def up
    create_table :rooms do |t|
      t.string :name

      t.timestamps
    end

    add_reference :course_classes, :room, null: false, foreign_key: true
  end

  def down
    remove_reference :course_classes, :room
    drop_table :rooms
  end
end
