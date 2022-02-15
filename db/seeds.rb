# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
school = School.create(name: "Dai Academia")
profesor = FactoryBot.create(:profesor, school_id: school.id)
pp "Dai Academia : #{school.id}"
vendor = FactoryBot.create(:vendor, school_id: school.id)
student = FactoryBot.create(:student, school_id: school.id)
payment = FactoryBot.create(:payment, school_id: school.id)
#crear dos profesores con nombre
#student = Student.create(school: school.id, first_name: "Pablo", last_name: "Cruz", )