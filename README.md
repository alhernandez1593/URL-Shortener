# README


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

1. Run the server -> `rails s`

2. Use Postman or curl to call endpoints, Postman info in [here](https://www.getpostman.com/)

### Live Demo ###

1. App is hosted in Heroku [here]()

### Run tests: ###

1. `rake db:test:prepare`

2. `rspec`

