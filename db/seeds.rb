puts " - - - - - - - - - - - - - - - - - - - - -"
puts "             SEEDING                      "
puts " - - - - - - - - - - - - - - - - - - - - -"
puts ""

User.delete_all
Team.delete_all
Channel.delete_all

james = User.create(
  email: 'james@example.com',
  first_name: 'James',
  last_name: 'Banister',
  password: '1234',
  password_confirmation: '1234')

charles = User.create(
  email: 'charles@example.com',
  first_name: 'Charles',
  last_name: 'Kuo',
  password: '1234',
  password_confirmation: '1234')

douglas = User.create(
  email: 'doug@example.com',
  first_name: 'Douglas',
  last_name: 'Drahem',
  password: '1234',
  password_confirmation: '1234')

iron_yard = Team.create(name: 'The Iron Yard', description: 'Team Yard')
station = Team.create(name: 'Houston Station', description: 'The Station')

rails = Channel.create(name: 'Houston Rails', description: 'rails things', team_id: iron_yard)
javascript = Channel.create(name: 'Houston Javascript', description: 'javaman', team_id: iron_yard)
innovation = Channel.create(name: 'Innovation', description: 'whatsayou', team_id: station)

iron_yard.users << [james, charles, douglas]
station.users << james

rails.users << [james, charles, douglas]
javascript.users << [james]
innovation.users << [james]

puts " "
puts "- - - - - - - - - - - - - - - - - - - - - - - "
puts " "
puts "                               #{Time.zone.now} "
puts " "
puts "- - - - - - - - SEED COMPLETE - - - - - - - - "
