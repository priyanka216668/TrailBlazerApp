# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#Uncomment below lines to generate data

#roles = Role.create([{ name:'admin', priority: 1 }, { name:'normal_user', priority: 2 }])

#require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seed', 'user_data.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#    u = User.new
#   u.first_name = row['first_name']
#   u.last_name = row['last_name']
#   u.email = row['email']
#   u.gender= row['gender']
#   u.phone_number= row['phone_number']
#   u.password = row['password']
#   u.role_id = Role.find_by( name: "normal_user").id
#   u.save
# end
# csv_text = File.read(Rails.root.join('lib', 'seed', 'post_data.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   p = Post.new
#   p.title = row['title']
#   p.content= row['content']
#   p.user_id = row['user_id'].to_i
#   p.save
# end

