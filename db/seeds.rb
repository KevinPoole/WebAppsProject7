# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
c1 = CourseOption.create(name:"CS 1210")
c2 = CourseOption.create(name:"CS 1220")
c3 = CourseOption.create(name:"BG 1220")
c4 = CourseOption.create(name:"BG 1230")
c5 = CourseOption.create(name:"EGCP 1010")

CourseOption.create(name:"EGCP 2120") 
CourseOption.create(name:"EGEE 3110") 
CourseOption.create(name:"EGEE 3210")
CourseOption.create(name:"CS 3410") 
CourseOption.create(name:"CS 3310") 




user1 = User.new
user1.login = "joe"
user1.email = "joe@cedarville.edu"
user1.password = "password"
user1.password_confirmation = "password"
user1.save!

user2 = User.new
user2.login = "pete"
user2.email = "pete@cedarville.edu"
user2.password = "password"
user2.password_confirmation = "password"
user2.save!

#give joe a couple of plans
p = Plan.create(user_id: user1.id, name: "Plan1")
#Plan.create(user_id: user1.id, name: "Plan2")
#p.save!
#p.terms.create(semester:"FA",year:2016)
t1 = Term.create(plan_id:p.id,semester:"FA",year:2016)
t2 = Term.create(plan_id:p.id,semester:"SP",year:2017)

Course.create(term_id:t1.id,name: "CS 1220")
Course.create(term_id:t1.id,name: "EGCP 1010")
Course.create(term_id:t1.id,name: "EGCP 3820")
Course.create(term_id:t1.id,name: "CS 4220")
#t.save!
#p.terms = [t]




#c = Course.create(name:"Old Testament")
#c.save!
