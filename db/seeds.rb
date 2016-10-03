puts " - - - - - - - - - - - - - - - - - - - - -"
puts "             SEEDING BEGIN                "
puts " - - - - - - - - - - - - - - - - - - - - -"
puts "user=User.find(no.)                       "

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

franklin = User.create(
  email: 'franklin@filibuster.com',
  first_name: 'Franklin',
  last_name: 'Filibuster',
  password: '1234',
  password_confirmation: '1234')

happy = User.create(
  email: 'happy@golucky.com',
  first_name: 'Happy',
  last_name: 'Golucky',
  password: '1234',
  password_confirmation: '1234')

haywood = User.create(
  email: 'haywood@yabuzzoff.com',
  first_name: 'Haywood',
  last_name: 'Yabuzzoff',
  password: '1234',
  password_confirmation: '1234')


iron_yard = Team.create(name: 'The Iron Yard', description: 'Default discussion channel for Iron Yard events, meetings and goto happenings')
jumbotron = Team.create(name: 'Jumbotron: The Team', description: 'Items seemingly associated with and maybe not limited to the use, development, implementation and improvement of techniques involving the use of Bootstrap JUMBOTRON.  Because JUMBOTRON is just so much fun to say.')
flexbox = Team.create(name: 'Flexbox', description: 'Flex and flex-box styling techniques discussions, ideas and help.')
javaman = Team.create(name: 'Technology', description: 'All tech things considered from iot to javascript.')

rails = Channel.create(name: 'Houston Rails', description: 'Rails topics and discussions for Houston Team', team_id: iron_yard)
javascript = Channel.create(name: 'Javascript', description: 'Choosing the right javascript platform without going over the top.', team_id: javaman)
innovation = Channel.create(name: 'Inner Net of Thangs', description: 'The internet of things discussions.', team_id: javaman)

iron_yard.users << [james, charles, douglas]
javaman.users << [james, franklin, happy, haywood]

rails.users << [happy, charles, douglas]
javascript.users << [james, haywood]
innovation.users << [haywood, douglas]

puts " "
puts "- - - - - - - - - - - - - - - - - - - - - - - - - - -"
puts " "
puts "  SEED COMPLETE                     #{Time.zone.now} "
puts " "
puts "- - - - - - - - - - - - - - - - - - -- - - - - - - - "
