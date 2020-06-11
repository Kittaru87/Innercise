# Innercise

[![Build Status](https://travis-ci.com/Kittaru87/Innercise.svg?branch=master)](https://travis-ci.com/Kittaru87/Innercise)
[![Coverage Status](https://coveralls.io/repos/github/Kittaru87/Innercise/badge.svg?branch=master)](https://coveralls.io/github/Kittaru87/Innercise?branch=master)

Help move your exercise inside.

Access [Innercise](https://innercise.herokuapp.com/) via Heroku.

**Tech used**: Ruby on Rails, Rspec, Capybara, Rubocop, Coveralls, Travis CI, Heroku

[Objective](#objective) | [Collaborators](#collaborators) | [Planning](#planning) | [MVP](#MVP) | [Running the program](#running_the_program) | [Testing](#testing) | [Further work](#further_work) 

## <a name="objectives">Objectives</a>

Create an app which helps people to focus their daily workouts while at home.

## <a name="planning">Planning</a>

[Trello board](https://trello.com/b/17SYVyiB/home-gym-app)

## <a name="MVP">MVP</a>

The MVP will include the following features:
- select a workout area
- the user will be shown a video (or selection of videos) that are relevant to exercising that area of the body

User journey:

- Navigate to home page
- Click the type of workout you want
- Navigate to selected page
- A selection of youtube videos to display either as a scroll down list or a horizontal scroll list that you navigate one at a time
- Idea to have the API call in the workouts helper to keep the workouts controller skinny - the show method pushes the id of the button into the api call
- Back button to home page

## <a name="running_the_program">Running the program</a>

### Setup

```
$ git clone https://github.com/kittaru87/innercise.git
$ cd innercise
$ bundle install
$ yarn install
$ bundle exec figaro install
```
You will then have to add a `YT_API_KEY` to the config/application.yml file with a valid Google API key.

To start the program
```
$ foreman start -f Procfile.dev
```
Navigate to 
```
http://localhost:5000/
```

It is important at this point to run the following at regular intervals:
```
$ rails db:sessions:trim
```
This will be included in the code eventually so that everytime the browser is closed the session is trimmed.

## <a name="testing">Testing, code coverage, and code style</a>
```
$ rspec 
$ rubocop 
```

## <a name="further_work">Further work</a>

**DONE 2nd iteration - improve usability for public use**

- Improve usability by allowing users to scroll through videos
- Create video database
- Pull relevant video data from database once API quota has been reached 

**DONE 3rd iteration - add user authentication and profile page**

- install Devise
- Style Devise standard views
- Add profile page

**DONE 4th iteration - add ability to like workouts and display on profile page**

- create likes join table
- add button functionality to video page
- show liked videos on profile page
- show top liked videos on index page

**DONE 5th iteration - add ability to complete a workout and show in your stats**

- create completed_workouts join table
- make the button work
- display the stats on the front page when signed in and in profile


