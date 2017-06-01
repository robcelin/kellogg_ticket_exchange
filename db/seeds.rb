# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.new
u1.email = "rob.celin@kellogg.northwestern.edu"
u1.phone = "4124913029"
u1.slack = "rob.celin"
u1.preferred_contact_method = "slack"
u1.password = "12341234"
u1.password_confirmation = "12341234"
u1.name = "Rob Celin"
u1.save


puts "#{User.count} users in the database"

Event.destroy_all

e1 = Event.new

e1.start_date = "2017/7/1"
e1.end_date = "2017/7/1"
e1.start_time = "4:00pm"
e1.end_time = "7:00pm"
e1.ticket_face_value = "40"
e1.event_category = "Social"
e1.name = "Boat Cruise"
e1.event_description = "Come sail"
e1.event_category = "Social"
e1.campusgroups_url = "http://kellogg.campusgroups.com"
e1.address = "100 Michigan Ave, Chicago, IL"
e1.save

puts "#{Event.count} events in the database"
