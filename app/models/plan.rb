class Plan < ActiveRecord::Base
	belongs_to(:user)
	has_many(:terms)
 	#has_many :terms, through: :term_courses
end
