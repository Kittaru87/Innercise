# Innercise

[![Coverage Status](https://coveralls.io/repos/github/Kittaru87/Innercise/badge.svg?branch=master)](https://coveralls.io/github/Kittaru87/Innercise?branch=master)

[![Build Status](https://travis-ci.com/Kittaru87/Innercise.svg?branch=master)](https://travis-ci.com/Kittaru87/Innercise)

Help move your exercise inside.

Access [Innercise](https://innercise.herokuapp.com/) via Heroku.

**Tech used**: Ruby on Rails, Rspec, Capybara, Rubocop, Coveralls, Travis CI, Heroku

foreman start -f Procfile.dev

## Planning ##

[Trello board](https://trello.com/b/17SYVyiB/home-gym-app)

**MVP**

User journey:

- Navigate to home page
- Press link for what type of workout you want
- Navigate to selected page
- A selection of youtube videos to display either as a scroll down list or a horizontal scroll list that you navigate one at a time
- Idea to have the API call in the workouts helper to keep the workouts controller skinny - the show method pushes the id of the button into the api call
- Back button to home page

**2nd iteration - improve usability for public use**

- Improve usability by allowing users to scroll through videos
- Create video database
- Pull relevant video data from database once API quota has been reached 



