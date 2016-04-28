class Course < ActiveRecord::Base
	has_many :term_courses
 	has_many :plans, through: :term_courses

end
