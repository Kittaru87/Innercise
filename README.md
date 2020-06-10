# Innercise

[![Coverage Status](https://coveralls.io/repos/github/Kittaru87/Innercise/badge.svg?branch=master)](https://coveralls.io/github/Kittaru87/Innercise?branch=master)

[![Build Status](https://travis-ci.com/Kittaru87/Innercise.svg?branch=master)](https://travis-ci.com/Kittaru87/Innercise)

Help move your exercise inside.

Access [Innercise](https://innercise.herokuapp.com/) via Heroku.

**Tech used**: Ruby on Rails, Rspec, Capybara, Rubocop, Coveralls, Travis CI, Heroku

foreman start -f Procfile.dev

rails db:sessions:trim

## Setup
```
$ git clone https://github.com/kittaru87/innercise.git
$ cd innercise
$ bundle install
$ yarn install
$ bundle exec figaro install
```
You will then have to add a `YT_API_KEY` to the config/application.yml file with a valid Google API key.

## Planning ##

[Trello board](https://trello.com/b/17SYVyiB/home-gym-app)

**MVP**

User journey:

- Navigate to home page
- Click the type of workout you want
- Navigate to selected page
- A selection of youtube videos to display either as a scroll down list or a horizontal scroll list that you navigate one at a time
- Idea to have the API call in the workouts helper to keep the workouts controller skinny - the show method pushes the id of the button into the api call
- Back button to home page

**2nd iteration - improve usability for public use**

- Improve usability by allowing users to scroll through videos
- Create video database
- Pull relevant video data from database once API quota has been reached 

**3rd iteration - add user authentication and profile page**

- install Devise
- Style Devise standard views
- Add profile page

**4th iteration - add ability to like workouts and display on profile page**

- create likes join table
- add button functionality to video page
- show liked videos on profile page
- show top liked videos on index page


