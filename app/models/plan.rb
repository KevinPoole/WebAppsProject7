class Plan < ActiveRecord::Base

	belongs_to(:user)
	has_many :term_courses
 	has_many :terms, through: :term_courses


end
