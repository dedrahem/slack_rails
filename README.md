### project name: slack_rails
#### Week 8 Lab - Slack Clone
##### Quick Stats
* rails version: 5.0.0.1
* ruby version: ruby 2.3.1p112 (2016-04-26 revision 54768)
* aka: ruby 2.3.1
* simple_form: 3.2.1
* react-rails: 1.8.2
* bootstrap-sass: 3.3


#### Simple_Form
* Ref. Useful github link for use and class definition.
  * https://github.com/plataformatec/simple_form

#### Style Tip du'Jour
Use bootstrap for the components, i.e. pretty forms, nice buttons, crisp text, alerts and quick colors. **THEN** use FLEX for the layout of the content.  And watch that the content flexes, sizes and wraps as intended.

#### Tip - in the form of a Commandment
Jesse says, “whenever you migrate on Heroku, well then, $>heroku restart   “

#### Centering Vertically
6 Methods For Vertical Centering With CSS
* http://vanseodesign.com/css/vertical-centering/
* The Takeaway ? Equal Top and Bottom Padding					                 

#### Action Cable - Whaaaat?

* Action Cable is not used in this application, but what is it?
* Action Cable debuted at RailsConf 2015 and has been merged into Rails.
* A single Action Cable server can handle multiple connection instances. It has one connection instance per WebSocket connection. A single user may have multiple WebSockets open to your application if they use multiple browser tabs or devices. The client of a WebSocket connection is called the consumer.
* Action Cable integrates WebSockets with the rest of your Rails application. It allows for real-time features to be written in Ruby in the same style and form as the rest of your Rails application, while still being performant and scalable.
* Reference-Action Cable on GitHub, user instruction page.
  * https://github.com/rails/rails/tree/master/actioncable
* Reference-Creating a chat using Rails' Action Cable
  * tutorials.pluralsight.com/ruby-ruby-on-rails/creating-a-chat-using-rails-action-cable
* Reference-Action Cable Overview — Ruby on Rails Guides
  * edgeguides.rubyonrails.org/action_cable_overview.html
* Action Cable and WebSockets: An in-Depth Tutorial
  * https://www.sitepoint.com/action-cable-and-websockets-an-in-depth-tutorial/
* Real-Time Rails: Implementing WebSockets in Rails 5 with Action Cable
  * https://blog.heroku.com/real_time_rails_implementing_websockets_in_rails_5...

##### An **abbreeeeeviated** yet, short list of hurdles and takeaways.

1. Shading alternate rows by brute force.  It worked and included a callout for class as an #ID and an @mixin being used with ruby in the view.html.erb . See the html and stylesheet.

2. Rails 5.  Reinstalled Rails 4.  Then decided to move on to Rails 5.  So consequently am now running rails version manager.  But this is okay, now when i select a project directory a system message pop up will say something like:  
> RVM used your Gemfile for selecting Ruby, it is all fine - Heroku does that too, you can ignore these warnings with 'rvm rvmrc warning ignore . . . .

3. Could not push to Heroku.

	remote:  rake aborted!
	remote:  Sprockets::ArgumentError: require_tree argument must be a directory

	remote: Precompiling assets failed.  
	remote: Push rejected, failed to compile Ruby app.  
	remote: Push failed  
	remote: Verifying deploy...  
	remote: Push rejected to slackarama.  
	remote: ! [remote rejected] master -> master (pre-receive hook declined)  
    remote: we hope you thrive on rejection  
	And the ever so ominous: **Master pre-receive hook declined.**

	Do not pass GO  -  Do not collect $100

4. require_tree - is called out in three places - application.js, cable.js and components.js .  Require tree will call out a directory and that directory must have content, i.e. it cannot be an empty directory.  A copied keep file will suffice for content.  The solution here was to comment out the un-needed mentions, for example in action cable and keep the applications callout for require_tree.

5. The other item, much more subtle.  

    An earlier, now delected heroku app, was associated on github for the github push.  A new heroku app named slackarama was created when the update was made to use Rails 5.  Git couldn't commit since it was pushing to a deleted app name in Heroku.  If the name don't fit you won't commit.

   The resolution is shown in the CLI lines below.

$> git push heroku master

remote: ! No such app as slacktvc15.  
fatal: repository 'https://git.heroku.com/slacktvc15.git/' not found

$> git status

On branch master
Your branch is up-to-date with 'origin/master', nothing to commit, working directory clean

$> git remote

heroku  
origin

$> git remote add heroku git@heroku.com:{slackarama}.git

fatal: remote heroku already exists.

$> git remote -v

heroku	https://git.heroku.com/slacktvc15.git (fetch)  
heroku	https://git.heroku.com/slacktvc15.git (push)  
origin	https://github.com/dedrahem/slack_rails.git (fetch)  
origin	https://github.com/dedrahem/slack_rails.git (push)  

$> git remote rm heroku

$> git remote -v  
origin	https://github.com/dedrahem/slack_rails.git (fetch)  
origin	https://github.com/dedrahem/slack_rails.git (push)  

$> git remote add heroku git@heroku.com:slackarama.git  

$> git remote -v

heroku	git@heroku.com:slackarama.git (fetch)  
heroku	git@heroku.com:slackarama.git (push)  
origin	https://github.com/dedrahem/slack_rails.git (fetch)  
origin	https://github.com/dedrahem/slack_rails.git (push)

$> git remote add prod git@heroku.com:slackarama.git  

$> git remote -v  

heroku	git@heroku.com:slackarama.git (fetch)  
heroku	git@heroku.com:slackarama.git (push)  
origin	https://github.com/dedrahem/slack_rails.git (fetch)  
origin	https://github.com/dedrahem/slack_rails.git (push)  
prod	git@heroku.com:slackarama.git (fetch)  
prod	git@heroku.com:slackarama.git (push)

$> git status  

On branch master  
Your branch is up-to-date with 'origin/master'. nothing to commit, working directory clean

##### 6. Now what else could happen. ?

$> git push heroku master

The authenticity of host 'heroku.com ()' can't be established.  
RSA key fingerprint  . . . .   
Are you sure you want to continue connecting (yes/no)? yes  
Warning: Permanently added ‘heroku.com  
(RSA) blah, blah, blah ..to the list of known hosts.  
Permission denied (publickey).  
fatal: Could not read from remote repository.  
(Fatal, is never really a good thing.  Although there may appear to be varying degrees of fatality.)  

Please make sure you have the correct access rights
and the repository exists.

Adding a key to Heroku appeared to have corrected the issue and additionally generates a very nice little email sent from the fine folks at Heroku.


$> heroku keys:add ~/.ssh/id_rsa.pub

Uploading /file/path/.ssh/id_rsa.pub SSH key... done

$> git push heroku master
>  remote: https://slackarama.herokuapp.com/ deployed to        Heroku  
   remote:  
   remote: Verifying deploy.... done.  
   To git@heroku.com:slackarama.git  
   [new branch] master -> master

7. Problems with the bellagio background image after deploy.  

    Background image does not appear on the Heroku app’s render.  The bellagio background appeared while using the local_server_3K.  The immediate consideration is that “Background images are not using the sass ‘image_url’ function.”

    There is some mention that when pushing to Heroku, the image's name is cached using a hash.  Which may inadvertently rename the image rendering it unseen by the program execution.  The Heroku output log contained the following results,

remote: Preparing app for Rails asset pipeline  
remote: Running: rake assets:precompile  
remote: I, [2016-10-02T04:48:35.884819 #1xx3]  INFO -- : Writing /tmp/build_ **_hash no._**/public/assets/bellagio-**_another hash no._** .jpg

The image **WAS** called out in the stylesheet’s scss using:  
> body {  
      padding-top: 200px;  
      background: linear-gradient(  
        rgba(0,0,0, 0.3),  
        rgba(0,0,0, 0.3)  
        ), url("/assets/bellagio.jpg") no-repeat center   center fixed;  
      -webkit-backgroud-size: cover;  
      -moz-background-size: cover;  
      background-size: cover;  
      /* -o-background-size: cover; */  
    }  

The body {} styling now appears as:  
> body {  
      padding-top: 200px;  
      background-image: image-url('bellagio.jpg');  
      background-repeat: no-repeat;  
      background-position: center;  
      background-attachment: fixed;  
      background-size: cover;  
      /* background-size: 100%; */  
      -webkit-backgroud-size: cover;  
      -moz-background-size: cover;  
   }  

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
A few things that really helped:
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

> https://launchschool.com/blog/rails-asset-pipeline-best-practices

> http://guides.rubyonrails.org/asset_pipeline.html

> http://stackoverflow.com

- - - - - - - - - - - - - - - - - - - - - - - - - - - -
Some Credit To:
- - - - - - - - - - - - - - - - - - - - - - - - - - - -

From the Github - found at http://www.markdowntutorial.com

* Markdown is a way to write content for the web in a format referred to as "plaintext" or maybe "plaintext for nerds".

* Markdown "text" is easily shared between devices.
* A list of known associates would include:
  * GitHub
  * Reddit

* Markdown has a "minimalistic, bare-bones" instruction set.
  * All you have control over is the display of the text—stuff for instance bold, creating headers, and organizing lists.
  * There does exist “extended” implementations of Markdown that support formats like tables, definition lists, footnotes, and more. Because they’re non-standard, they’re not essential to learning the basics.
  * Links to additional tutorials and information for Markdown including the extended markdown may be found at the end of the markdown tutorial provided by the above link.


* Markdown here is used with a mad-dog (MD) editor.  The editor is drilling down to the dot.md file in the app for editing and saving.
