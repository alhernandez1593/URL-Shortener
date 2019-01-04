# README

This README would normally document whatever steps are necessary to get the
application up and running.

### What is this repository for? ###

Simple Url shortener example

### How do I get set up? ###

#### Rails ####

1. Get PostgresSQL, info can be [here](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-14-04)

2. Get RVM (unless you already got it), info in [here](https://rvm.io/rvm/install)

3. Install the correct Ruby version (currently 2.4.1) -> `rvm install ruby-2.4.1`

4. Install the Bundler gem -> `gem install bundler`

5. Install the other gems -> `bundle` OR `bundle install`

6. Setup the database.yml file (There's a guide -> `databse.yml.example` ).

7. Setup the database -> `rake db:setup`

### Run the local server ####

14. Run the server -> `foreman start -f Procfile.dev` (this will run servers for both Rails and Angular 5 apps)

### Run tests: ###

1. `rake db:test:prepare`

2. `rspec`

