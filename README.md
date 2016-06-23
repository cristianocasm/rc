# README

* Get your own copy of this project by running (_prefer SSH method so that you don't have to authenticate on each interaction - pull, push and etc - with remote_):

  $ `git clone git@github.com:cristianocasm/rc.git`

* It is highly recomended you to use a __ruby version manager__. If using RVM, you can create and use a gemset by creating a `.rvmrc` file within source folder of the app:

  $ `echo 'rvm use ruby-2.3.1@rc --create' > .rvmrc`

  * Check whether your gemset was properly set by running:
    
    $ `rvm list gemsets`

* Install all dependencies

  $ `bundle install`

* Rename the file `database.sample.yml` to `database.yml` (inside `config/` folder) and reset `username` and `password` properly so that the application can connect to your database locally.

* Create, migrate and seed your DB

  $ `rake db:setup`

# Some important information

* Heroku: https://rcct.herokuapp.com/

* Under `app/views/layouts/application.html.erb` we have the instruction `<%= javascript_include_tag controller_name if controller_has_js_asset? %>`. That instruction sets a convention to be followed when creating js assets: 

  * Create your file under `app/assets/javascripts` naming it as controller's name

    * Example: `users_controller.rb` -> `users.js`

  * This project uses Backbone.js. Thus, you must use the file created (in previous step) to initialize your Backbone class.

  * **Important**: once convention is followed, it is not necessary to include files in manifest (`app/assets/javascripts/application.js`).

* This project uses UUID for primary key instead of simple sequential ids. It increases security [as we can see in this funny blog post](http://www.fidelis.work/como-eu-usei-o-cartao-de-credito-do-ceo-do-trampos-co-para-pagar-minha-assinatura-premium/).
