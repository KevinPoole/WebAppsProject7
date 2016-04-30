class CreateCourseOptions < ActiveRecord::Migration
  def change
    create_table :course_options do |t|
      t.string :name

      t.timestamps
    end
  end
end
