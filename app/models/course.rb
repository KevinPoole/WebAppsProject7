class Course < ActiveRecord::Base
	belongs_to :term
	#has_many :term_courses
 	#has_many :terms, through: :term_courses
end
