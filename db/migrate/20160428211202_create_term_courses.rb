class CreateTermCourses < ActiveRecord::Migration
  def change
    create_table :term_courses do |t|
      t.references :term, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end
