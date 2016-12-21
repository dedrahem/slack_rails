
puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
puts "                                                        "
puts "   The SEED File has Started - your reference is at     "
puts "   reference is now                    #{Time.zone.now} "
puts "                                                        "
puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
puts "                                             "
puts "  note: 		user = User.find(no.)            "
puts "  note:     message=Message.all              "
puts "  seed initiates with User/Team/Channel .delete_all "

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
  email: 'haywood@jabuzzoff.com',
  first_name: 'Haywood',
  last_name: 'Jabuzzoff',
  password: '1234',
  password_confirmation: '1234')

  sideshow = User.create(
   email: 'sideshow@bob.com',
   first_name: 'Sideshow',
   last_name: 'Bob',
   password: '1234',
   password_confirmation: '1234')

   cowboy = User.create(
    email: 'cowboy@bob.com',
    first_name: 'Cowboy',
    last_name: 'Bob',
    password: '1234',
    password_confirmation: '1234')

    tinman = User.create(
     email: 'jim@tinman.com',
     first_name: 'Jim',
     last_name: 'Tinman',
     password: '1234',
     password_confirmation: '1234')

     didley = User.create(
      email: 'bo@didley.com',
      first_name: 'Bo',
      last_name: 'Didley',
      password: '1234',
      password_confirmation: '1234')

puts "   Users and attributes complete create. "
puts " "
iron_yard = Team.create(name: 'The Iron Yard', description: 'The default discussion channel for Slack_Rails assignment.  Suggested topics may include Brians Friday Play List, Music Suggestions for Friday Play List, Favorite Pubs, Rudyards, Friday Pints, Common Seating Area Ideas, Common Area Etiquitte')
jumbotron = Team.create(name: 'Jumbotron_CSS', description: 'Discussions for the development of formatting techniques such as BootStrap, Flex, CSS, JUMBOTRON, flexboot, flexstrap or whatever.  But why JUMBOTRON?  Because Jumbotron is just so much fun to say.')
flexbox = Team.create(name: 'Flexbox_Formats', description: 'Specifically ! - Flex and Flex-Box styling techniques discussions, ideas and help.')
technology = Team.create(name: 'Technology', description: 'All tech things considered. Open forum for anything from Internet of Things to Javascript, A to Z.')
puts "  Completed assignments and Team.create / Begin Channel assignments."
puts "  "
puts "  think: Channels are discussions that are assigned to a Team. "
puts "   so, Channel.create will contain an attribute assignment similar"
puts "   to team_id: technology.id in order to assign that discussion to the desired Team."
puts "   Yes, it does get confusing."
puts "    "
hdpp = Channel.create(name: 'HighDef Personal Players', description: 'Personal players that go beyond typical mp3, ipod or typical players', team_id: technology.id)
rails = Channel.create(name: 'Houston Rails', description: 'Rails topics and discussions for Houston Team', team_id: iron_yard.id)
javascript = Channel.create(name: 'Javascript', description: 'Choosing the right javascript platform without going over the top.', team_id: technology.id)
innovation = Channel.create(name: 'InterNet of Things', description: 'The coming avalanche of internet of things', team_id: technology.id)
vocab = Channel.create(name: 'High Def Vocabulary', description: 'Speaking the language of high def players', team_id: technology.id)
showbob = Channel.create(name: 'Sideshow Bob"s FAQ', description: 'Sideshow Bob, questions ranging from when is lunch to what is a byte.  See them all here.', team_id: technology.id)
boybob = Channel.create(name: 'Cowboy Bob"s FAQ', description: 'Cowboy Bob, who believes there are no stupid questions.  Help Cowboy by starting here.', team_id: technology.id)
fridays = Channel.create(name: 'Friday Pints', description: 'Suggested brews for Friday afternoon pints', team_id: iron_yard.id)
pubs = Channel.create(name: 'Favorite Area Pubs', description: 'Favorite local pubs.  Suggestions for a quick pint.', team_id: iron_yard.id)
music = Channel.create(name: 'Music Suggestions Common Area', description: 'Make suggestions for the friday playlist, or Brian will make his choices.', team_id: iron_yard.id)
learning = Channel.create(name: 'References for Flex and CSS', description: 'Make a suggestion for books and pdf based teaching materials.', team_id: jumbotron.id)
flexlearn = Channel.create(name: 'Suggested References for FLEX.', description: 'Dedicated to becoming more proficient in flex.  Taking a stand on a formatting platform. Get it?', team_id: flexbox.id)
puts "   "
puts "   Completed the channels as, Channel.create.  "
puts "   "
puts "   Begin the assignment of users to a TEAM. "
iron_yard.users << [james, charles, douglas]
jumbotron.users << [douglas, charles, tinman, cowboy]
flexbox.users << [douglas, didley, sideshow]
technology.users << [james, franklin, happy, haywood, sideshow, cowboy]
puts "   "
puts "   Completed arrays for Team.  User is assigned/associated to a TEAM(s). "
puts "    The TEAM will now be assigned with a Channel or Channels."
puts "     At the User, see user's Teams, click on a Team, and see "
puts "      The discussions or channels the Team contains."
# see my notes on page Q.
hdpp.users << [happy]
rails.users << [james, charles, douglas]
javascript.users << [james, happy, haywood]
innovation.users << [haywood, franklin]
showbob.users << [haywood, sideshow]
puts "  "
puts "   Completed the arrays for the Channel users"
puts "   "
puts "   Begin message creation and assignment."
puts "   it's showbob ! ! "
showbobmsg1 = Message.create(body: 'Sideshow Bob"s first message.  Hi, when is lunch?',channel_id: showbob.id, user_id: sideshow.id)
showbobmsg2 = Message.create(body: 'Sideshow Bob"s second message, Would you like to join me for a byte? ',channel_id: showbob.id, user_id: sideshow.id)
happyhdmsg3 = Message.create(body: 'message of happys high def personal player issues', channel_id: hdpp.id, user_id: happy.id)
happyjsmsg4 = Message.create(body: 'message posted by happy re javascript in team technology', channel_id: javascript.id, user_id: happy.id)
frankinmsg5 = Message.create(body: 'message of from Franklin IoT and innovation', channel_id: innovation.id, user_id: franklin.id)
charailmsg6 = Message.create(body: 'message from charles team iron yard channel rails', channel_id: rails.id, user_id: charles.id)
frvocabmsg7 = Message.create(body: 'message from franklin concerning vocabulary in technology', channel_id: vocab.id, user_id: franklin.id)
frboybomsg8 = Message.create(body: 'message in cowboy bob and technology from franklin cowboy bob FAQ', channel_id: boybob.id, user_id: franklin.id)
dougfrimsg9 = Message.create(body: 'Douglas message for fridays in iron yard team', channel_id: fridays.id, user_id: douglas.id)
ddpubsmsg10 = Message.create(body: 'message from doug in team iron yard and Fave Pubs', channel_id: pubs.id, user_id: douglas.id)
musicjmsg11 = Message.create(body: 'message from charles music in the commons team iron yard channel rails', channel_id: music.id, user_id: james.id)
jmbotimsg12 = Message.create(body: 'message from the tinman regarding learning channel flex and css jumbotron team', channel_id: learning.id, user_id: tinman.id)
didflxmsg13 = Message.create(body: 'message flexbox team, didley channel is sugg ref for flex ', channel_id: flexlearn.id, user_id: didley.id)
puts "   End message creation and assignments"
puts " "

puts " -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --"

puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - "
puts "                                                      "
puts "  The SEED has Completed                              "
puts "  and referenced at        #{Time.zone.now}           "
puts "                                                      "
puts "- - - - - - - - - - - - - - - - - - -- - - - - - - -  "

#  comment
#  notice below that these two calls for the user are equivalent (user_id: sideshow.id)   (user_id: 7)
#  showbobmsg1 = Message.create(body: 'Sideshow Bob"s first message.  Hi, when is lunch?',channel_id: showbob.id, user_id: sideshow.id)
#  showbobmsg2 = Message.create(body: 'Sideshow Bob"s second message, Would you like to join me for a byte? ',channel_id: showbob.id, user_id: 7)
#  comment
