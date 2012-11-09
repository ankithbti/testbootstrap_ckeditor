Gems Needed for CkEditor
--------------------------
### gem "ckeditor", "3.7.3"
### gem "paperclip"

Command
--------
### rails generate ckeditor:install --orm=active_record --backend=paperclip

In file: application.rb
-----------------------
config.autoload_paths += %W(#{config.root}/app/models/ckeditor)

In file config/routes.rb
-------------------------
mount Ckeditor::Engine => "/ckeditor"

In file config/environments/production.rb
-----------------------------------------
config.assets.precompile += Ckeditor.assets

Add in application.js
----------------------
//= require ckeditor/init


Use in form:
-------------
<%= form.input :content, :as => :ckeditor, :label => false, :input_html => { :toolbar => 'Full' } %>

To stop the authentication while pushing to git hub again and again
--------------------------------------------------------------------
In file .git/config
https://github.com....
to
git@github.com:.....


Heroku Options
----------------
### heroku apps:create bootstrapckeditor
### git push heroku master
### heroku run rake db:migrate

Heroku Server
--------------
#### http://bootstrapckeditor.herokuapp.com/

Caution
--------
#### Always use all the three gems as mentioned below for twitter-bootstarp gem
### gem "therubyracer"
### gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
### gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
