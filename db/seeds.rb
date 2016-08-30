# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
u1 = User.create :title => "Mr", :first_name => "John", :last_name => "Doe", :email => "johndoe@gmail.com", :dob => "01/08/1965", :gender => "male", :contact_number => "0433357430", :address_line_1 => "20 Mockingbird Lane", :address_line_2 => "", :suburb => "West Rydalmere", :diet => "vegetarian", :medical_condition => "not applicable", :password_confirmation => "chicken"

u2 = User.create :title => "Ms", :first_name => "Jane", :last_name => "Doe", :email => "janedoe@gmail.com", :dob => "11/08/1975", :gender => "female", :contact_number => "0833357430", :address_line_1 => "40 Mockingbird Lane", :address_line_2 => "", :suburb => "West Rydalmere", :diet => "vegetarian", :medical_condition => "not applicable", :password_confirmation => "chicken"

p u1
p u2








Country.destroy_all

c1 = Country.create :name => "France", :top_facts => "Bread is nice", :highlights => "Corsica", :weather => "hot", :image => "menton.jpg"

c2 = Country.create :name => "Germany", :top_facts => "Gimme your wurst", :highlights => "lederhosen and dirndls", :weather => "grey", :image => "bavaria.jpg"



City.destroy_all

d1 = City.create :name => "Paris", :top_facts => "city of culture", :highlights => "eiffel tower", :image => "paris.jpg"

d2 = City.create :name => "Marseille", :top_facts => "south of france", :highlights => "the calanques", :image => "marseille.jpg"

d3 = City.create :name => "Berlin", :top_facts => "Eclectic and fast paced", :highlights => "Alternative scene", :image => "berlin.jpg"

c1.cities << d1 << d2
c2.cities << d3

p "#{City.all.count}"
p "number of french cities in France:  #{c1.cities.count}"
p "number of german cities in Germany:  #{c2.cities.count}"

Tour.destroy_all

t1 = Tour.create :name => "Multi-stop City Tour", :theme => "Paris and Berlin", :duration => "7 days", :top_facts => "a walking and bicycle tour through the historic centres", :highlights => "historical buildings", :price => "480", :image => "louvre", :start_date => "30 Aug 2010", :end_date => "7 Sep 2011"

t2 = Tour.create :name => "Around around the arrondissement", :theme => "Paris", :duration => "2 days", :top_facts => "a snail paced vehicular tour to watch the 's' cars go", :highlights => "les musees", :price => "120", :image => "arc_de_triomphe", :start_date => "30 Aug 2010", :end_date => "7 Sep 2011"


p t1
p t2

t1.cities << d1 << d3
t2.cities << d1

p "#{t1.cities.count}"

t1.cities.each do |a|
  puts "#{a.name}"
end

p "#{t1.cities.count}"

t2.cities.each do |a|
  puts "#{a.name}"
end
