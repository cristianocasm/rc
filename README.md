== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.


* Get your own copy of this project by running (_prefer SSH method so that you don't have to authenticate on each interaction - pull, push and etc - with remote_):
    $ git clone git@github.com:cristianocasm/rc.git

* It is highly recomended you to use a __ruby version manager__. If using RVM, you can create and use a gemset by creating a `.rvmrc` file within source folder of the app:
    $ echo 'rvm use ruby-2.3.1@rc --create' > .rvmrc

  * Check whether your gemset was properly set by running:
    
    $ rvm list gemsets

* Install all dependencies
    $ bundle install

* Rename the file `database.sample.yml` to `database.yml` (inside `config/` folder) and reset `username` and `password` properly so that the application can connect to your database locally.

* Create, migrate and seed your DB
    $ rake db:create
    $ rake db:migrate
    $ rake db:seed


# Some important information

* In ordet to speed up front-end development, some elements of [Blankon Template]() were used.
