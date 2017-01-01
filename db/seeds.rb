
puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
puts "                                                        "
puts "   The SEED File has Started - your reference is at now of #{Time.zone.now}"
puts "                   using Time.zone.now                  "
puts "                                                        "
puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
puts "                                             "
puts "  note: 		user = User.find(no.)            "
puts "  note:     message=Message.all              "
puts "    O  seed initiates with User/Team/Channel .delete_all  O"
puts "    O  rails db:drop - db:create db:migrate db:seed       O"
puts "    O  one must migrate before putting down the seed      O"
puts "  "
puts "          User.delete_all "
puts "          Team.delete_all "
puts "          Channel.delete_all "
puts "          Message.delete_all "
puts " "

 User.delete_all
 Team.delete_all
 Channel.delete_all
 Message.delete_all
puts " james "
 james = User.create(
   email: 'james@example.com',
   first_name: 'James',
   last_name: 'Banister',
   password: '1234',
   password_confirmation: '1234')
puts " charles"
 charles = User.create(
   email: 'charles@example.com',
   first_name: 'Charles',
   last_name: 'Kuo',
   password: '1234',
   password_confirmation: '1234')
puts "douglas"
 douglas = User.create(
   email: 'doug@example.com',
   first_name: 'Douglas',
   last_name: 'Drahem',
   password: '1234',
   password_confirmation: '1234')
puts "franklin"
 franklin = User.create(
   email: 'franklin@filibuster.com',
   first_name: 'Franklin',
   last_name: 'Filibuster',
   password: '1234',
   password_confirmation: '1234')
puts " happy"
 happy = User.create(
   email: 'happy@golucky.com',
   first_name: 'Happy',
   last_name: 'Golucky',
   password: '1234',
   password_confirmation: '1234')
puts "haywood"
 haywood = User.create(
  email: 'haywood@jabuzzoff.com',
  first_name: 'Haywood',
  last_name: 'Jabuzzoff',
  password: '1234',
  password_confirmation: '1234')
puts " sideshow"
  sideshow = User.create(
   email: 'sideshow@bob.com',
   first_name: 'Sideshow',
   last_name: 'Bob',
   password: '1234',
   password_confirmation: '1234')
puts " cowboy"
   cowboy = User.create(
    email: 'cowboy@bob.com',
    first_name: 'Cowboy',
    last_name: 'Bob',
    password: '1234',
    password_confirmation: '1234')
puts " tinman"
    tinman = User.create(
     email: 'jim@tinman.com',
     first_name: 'Jim',
     last_name: 'Tinman',
     password: '1234',
     password_confirmation: '1234')
puts " didley"
     didley = User.create(
      email: 'bo@didley.com',
      first_name: 'Bo',
      last_name: 'Didley',
      password: '1234',
      password_confirmation: '1234')
puts " "
puts "   Users and attributes have been created - complete. "
puts " "
puts " ===================================================== "
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
hdpp = Channel.create(name: 'HighDef Personal Players', description: 'Personal players - beyond typical mp3, ipod or typical players', team_id: technology.id)
rails = Channel.create(name: 'Houston Rails', description: 'Rails topics and discussions for Houston Team', team_id: iron_yard.id)
javascript = Channel.create(name: 'Javascript', description: 'Choosing the right javascript platform without going over the top.', team_id: technology.id)
innovation = Channel.create(name: 'InterNet of Things', description: 'The coming avalanche of internet of things', team_id: technology.id)
vocab = Channel.create(name: 'High Def Vocabulary', description: 'Speaking the language of high def players', team_id: technology.id)
showbob = Channel.create(name: 'Sideshow Bob"s FAQ', description: 'Sideshow Bob, questions ranging from when is lunch to what is a byte.  See them all here.', team_id: technology.id)
boybob = Channel.create(name: 'Cowboy Bob"s FAQ', description: 'Cowboy Bob, who believes there are no stupid questions.  Help Cowboy by starting here.', team_id: technology.id)
fridays = Channel.create(name: 'Friday Pints', description: 'Suggested brews for Friday afternoon pints', team_id: iron_yard.id)
pubs = Channel.create(name: 'Favorite Area Pubs', description: 'Favorite local pubs.  Where to go for a quick pint.', team_id: iron_yard.id)
music = Channel.create(name: 'Music Suggestions Common Area', description: 'Make suggestions for the friday playlist, or Brian will make his choices, and we know what that means.', team_id: iron_yard.id)
learning = Channel.create(name: 'References - Flex and CSS', description: 'Make a suggestion for books and pdf based teaching materials.', team_id: jumbotron.id)
flexlearn = Channel.create(name: 'Suggested References - FLEXSuggestions, References and Comments', description: 'Suggestions-References-Comments - becoming more proficient in flex.  Taking a stand on a formatting platform. Get it?', team_id: flexbox.id)
puts "   "
puts "   Completed the channels - Channel.create.  "
puts "   "
puts "   Begin the assignment of users to a TEAM. "
puts "   team_name.users << [users are assigned via seed variable - neat huh?]"
puts "      there is a lot to keep track of here with this approach.  YIPES !! "
iron_yard.users << [james, charles, douglas]
jumbotron.users << [douglas, charles, tinman, cowboy]
flexbox.users << [douglas, didley, sideshow]
technology.users << [james, franklin, happy, haywood, sideshow, cowboy]
puts "   "
puts "   Completed arrays for Team.  User is assigned/associated to a TEAM(s). "
puts "    The TEAM will now be assigned with a Channel or Channels."
puts "     At the User, see user's Teams, click on a Team, and see "
puts "      The discussions or channels the Team contains."
puts "       Yoda would say something like this - belong to channels, messages do.  "
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
puts "           it's showbob ! ! "

showbobmsg1 = Message.create(body: 'Sideshow Bob"s first message.  Hi, when is lunch?',channel_id: showbob.id, user_id: sideshow.id)
showbobmsg2 = Message.create(body: 'Sideshow Bob"s second message, Would you like to join me for a byte? ',channel_id: showbob.id, user_id: sideshow.id)

happyhdmsg13 = Message.create(body: 'Happy - you have to question the tradeoffs in ease of use and portability.  The original iPOD just works !!', channel_id: hdpp.id, user_id: happy.id)
happyhdmsg23 = Message.create(body: 'Franklin - maybe the home market and mass storage is the best use of the format', channel_id: hdpp.id, user_id: franklin.id)
happyhdmsg33 = Message.create(body: 'Happy - there are the hoops one must jump through to save and store the high res format, i just want to listed to my Johnny Winter stuff', channel_id: hdpp.id, user_id: happy.id)

happyjsmsg14 = Message.create(body: 'Happy - anybody ?  Angular, React, Backbone, Node.JS, Hambone..... c-mon man ', channel_id: javascript.id, user_id: happy.id)
haywojsmsg24 = Message.create(body: 'Haywood - i guess going by recall of job postings i have seen, the choices would be React or Angular ??', channel_id: javascript.id, user_id: haywood.id)
happyjsmsg34 = Message.create(body: 'Happy - what does jesse say ?? hmmm ?', channel_id: javascript.id, user_id: happy.id)
haywojsmsg44 = Message.create(body: 'Haywood - well, he says No. 1, you never ever want to get worms. 2. stay away from Angular.  But then he appears to lean towards React followed by jQuery - basics of javascript: nostarch.com/jsforkids -- jQuery: leanpub.com/wrinklefree-jquery-and-html5 -- https:/reactforbeginners.com/ --  i like the cornstarch stuff', channel_id: javascript.id, user_id: haywood.id)

frankinmsg15 = Message.create(body: 'Franklin - I Do NOT ! want Vladimir Putin snooping around in my refridgerator ! ', channel_id: innovation.id, user_id: franklin.id)
haywoinmsg25 = Message.create(body: 'Haywood - I can see that.  You are at the store, you get a text message that says, Hi this is Vladimir you should get some eggs and looks like you need some milk too, you have less than a half gallon, comrade.', channel_id: innovation.id, user_id: haywood.id)

charailmsg6 = Message.create(body: 'Charles - hello Iron Yard, any Rails users here ? ', channel_id: rails.id, user_id: charles.id)

frvocabmsg7 = Message.create(body: 'Mr. Filibuster - Yoda, belong to channels messages do.', channel_id: vocab.id, user_id: franklin.id)

frkbomsg18 = Message.create(body: 'Franklin - Cowboy Bob, help me Cowboy Bob, Why isn’t my wireless mouse connected to the computer?', channel_id: boybob.id, user_id: franklin.id)
jambomsg28 = Message.create(body: 'James - I will reset the internet for Cowboy Bob !', channel_id: boybob.id, user_id: james.id)
hapbomsg38 = Message.create(body: 'Happy - ya know the French now have the right to ignore any email received when they are not at work.', channel_id: boybob.id, user_id: happy.id)
sidbomsg48 = Message.create(body: 'Sideshow - Hey Hap, that is on top of their 35 hour work week too ya know.', channel_id: boybob.id, user_id: sideshow.id)
cowbomsg58 = Message.create(body: 'Cowboy - My computer is telling me to press any key to continue. Where is the -any- key ??', channel_id: boybob.id, user_id: cowboy.id)
haybomsg68 = Message.create(body: 'Haywood - Cowboy Bob ! sit down and shut up, the Big Bang is on....', channel_id: boybob.id, user_id: haywood.id)

dougfrimsg19 = Message.create(body: 'Douglas - another Friday afternoon here and what to do, may as well go get a pint or two.... ', channel_id: fridays.id, user_id: douglas.id)
jamefrimsg29 = Message.create(body: 'James - Skipping pints today,..goin on down to Louisiana and get me a mojo hand - gonna fix my woman so she can have no other man. ', channel_id: fridays.id, user_id: james.id)

ddpubsmsg10 = Message.create(body: 'Doug - Rudyards or Hay Merchant are pretty convenient, my choice is Rudyards anyway.', channel_id: pubs.id, user_id: douglas.id)
ckpubsmsg20 = Message.create(body: 'Charles - We should go, like now.', channel_id: pubs.id, user_id: charles.id)

musicjmsg11 = Message.create(body: 'Charles - dorton has a penchant for 80s hairbands, Matt K ?  well, .........', channel_id: music.id, user_id: james.id)
musiccmsg21 = Message.create(body: 'Charles - some selections for common area music? Lightnin Hopkins, Johnny Winter ....', channel_id: music.id, user_id: charles.id)
musicdmsg31 = Message.create(body: 'Douglas - Lightnin Hopkins? born Sam Hopkins in Centerville TX and settled in Houston following WWII, was discovered in Houston in 46 by a local scout named Cullen', channel_id: music.id, user_id: douglas.id)

jmbotimsg12 = Message.create(body: 'Tinman - Flexible Boxes in CSS: Free Yourself with Flexbox', channel_id: learning.id, user_id: tinman.id)
jmbockmsg22 = Message.create(body: 'Chuck - Grid Layout in CSS: Interface Layout for the Web', channel_id: learning.id, user_id: charles.id)
jmbocbmsg32 = Message.create(body: 'Cowboy - Table Layout in CSS: CSS Table Rendering in Detail', channel_id: learning.id, user_id: cowboy.id)
jmbot2msg42 = Message.create(body: 'Tinman - Bootstrap: Responsive Web Development', channel_id: learning.id, user_id: tinman.id)
jmbocbmsg52 = Message.create(body: 'Cowboy - Oz never did give nothin to the Tinman, that he didnt, didnt already have.', channel_id: learning.id, user_id: cowboy.id)

didflxmsg13 = Message.create(body: 'Bo - flexbox in 5 minutes, see  www.flexboxin5.com ', channel_id: flexlearn.id, user_id: didley.id)
sshflxmsg23 = Message.create(body: 'Sideshow - Regarding GIT - there are ways to pretend the sat/sun didn’t happen, but everything works better if you revert! ', channel_id: flexlearn.id, user_id: sideshow.id)
dd1flxmsg33 = Message.create(body: 'DD - you can use BOTH Flexbox AND Grid, But NOT Flexbox and Bootstrap ', channel_id: flexlearn.id, user_id: douglas.id)
dd2flxmsg43 = Message.create(body: 'DD - Use BOOTSTRAP for pretty forms, buttons and the like.  Then use the others for everthing else. ', channel_id: flexlearn.id, user_id: douglas.id)
puts "  "
puts "   End message creation and assignments"
puts "  "

puts " -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --"
puts " oz never did give nothing to the Tinman that he didn't already have."
puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
puts "                                                      "
puts "  The SEED has Completed and complete at now time of #{Time.zone.now}"
puts "  "
puts "                                                                     "
puts "- - - - - - - - - - - - - - - - - - -- - - - - - - -  - - - - - - - -"
puts " "
puts "                        whew !                                       "
puts "  "
#  comments
#  notice below that these two calls for the user are equivalent (user_id: sideshow.id)   (user_id: 7)
#  showbobmsg1 = Message.create(body: 'Sideshow Bob"s first message.  Hi, when is lunch?',channel_id: showbob.id, user_id: sideshow.id)
#  showbobmsg2 = Message.create(body: 'Sideshow Bob"s second message, Would you like to join me for a byte? ',channel_id: showbob.id, user_id: 7)
#  comments
#  added messages and a final flourish !!!
