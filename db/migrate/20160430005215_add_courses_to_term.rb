class AddCoursesToTerm < ActiveRecord::Migration
  def change
  	add_column :courses, :term_id, :integer
  	add_index :courses, :term_id
  end
end
