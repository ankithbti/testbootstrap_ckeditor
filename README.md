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

Before pushing to heroku make sure you precompile all the assets using command
-------------------------------------------------------------------------------

###  RAILS_ENV=production bundle exec rake assets:precompile
#### Checkin the code in git then push in heroku

Heroku Options
----------------
### heroku apps:create bootstrapckeditor
### git push heroku master
### heroku run rake db:migrate

Heroku Server
--------------
#### http://bootstrapckeditor.herokuapp.com/

Twitter Bootstarp Gem Usage
----------------------------
Caution
--------
#### Always use all the three gems as mentioned below for twitter-bootstarp gem
### gem "therubyracer"
### gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
### gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'



Run command:
-------------
### rails g bootstrap:install

To decorate view
--------------------
### rails g bootstrap:themed products -f

#### Add padding-top in css less file , if using fixed nav at top

Application file:
-------------------
####Change to this in head:

<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
    <![endif]-->
    <%= stylesheet_link_tag    "application", :media => "all" %>
    <%= javascript_include_tag "application" %>
    <%= csrf_meta_tags %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

To add nav Bar:
<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Project name</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li class="nav-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
            </ul>
            <form class="navbar-search pull-left" action="">
                      <input type="text" class="search-query span2" placeholder="Search">
            </form>
            <form class="navbar-form pull-right">
              <input class="span2" type="text" placeholder="Email">
              <input class="span2" type="password" placeholder="Password">
              <button type="submit" class="btn">Sign in</button>
            </form>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

To install simple form
------------------------
##Add gem: 
-----------
### gem 'simple_form'

Run command:
--------------
rails g simple_form:install --bootstrap

Add following CSS in application.css
-------------------------------------
simple_form CSS

.simple_form label {
  float: left;
  width: 100px;
  text-align: right;
  margin: 2px 10px;
}

.simple_form div.input {
  margin-bottom: 10px;
}

.simple_form div.boolean, .simple_form input[type='submit'] {
  margin-left: 120px;
}

.simple_form div.boolean label, .simple_form label.collection_radio {
  float: none;
  margin: 0;
}

.simple_form label.collection_radio {
  margin-right: 10px;
  margin-left: 2px;
}

.simple_form .error {
  clear: left;
  margin-left: 120px;
  font-size: 12px;
  color: #D00;
  display: block;
}

.simple_form .hint {
  clear: left;
  margin-left: 120px;
  font-size: 12px;
  color: #555;
  display: block;
  font-style: italic;
}
-------------------------------End---------------------------------

