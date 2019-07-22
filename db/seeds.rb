# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.destroy_all
Expectation.destroy_all
Responsibility.destroy_all
Role.destroy_all
Job.destroy_all

flatironstudent = Job.create(name:'Flat Iron Student')
student = Role.create(name:'study', percentage:80, job: flatironstudent)
network = Role.create(name:'network', percentage:20, job: flatironstudent)
codechallenge = Responsibility.create(name:'codechallenge', role: student)
labs = Responsibility.create(name:'labs', role:student)
three = Expectation.create(name:'score a 3/5', responsibility: codechallenge)
takemorethanonce = Task.create(name:'take the code challenge more than once', date_started:'2019, 22', date_completed: '2019, 22', expectation:three)
