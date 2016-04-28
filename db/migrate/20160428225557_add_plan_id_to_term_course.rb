class AddPlanIdToTermCourse < ActiveRecord::Migration
  def change
  	add_column :term_courses,:plan_id,:integer
  end
end
