gem "ckeditor", "3.7.3"
gem "paperclip"
# rails generate ckeditor:install --orm=active_record --backend=paperclip
In file: application.rb
config.autoload_paths += %W(#{config.root}/app/models/ckeditor)

In file config/routes.rb
mount Ckeditor::Engine => "/ckeditor"

config/environments/production.rb
config.assets.precompile += Ckeditor.assets

Add in application.js
//= require ckeditor/init


Add in form:
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
