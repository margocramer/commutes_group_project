# README

## All Aboard

# LAUNCH ACADEMY group project
[ ![Codeship Status for margocramer/commutes_group_project](https://app.codeship.com/projects/3a1d7920-4d42-0135-ea45-72e8c5ccfe37/status?branch=master)](https://app.codeship.com/projects/233137)

![Code Climate](https://codeclimate.com/github/margocramer/commutes_group_project.png)

[![Coverage Status](https://coveralls.io/repos/github/margocramer/commutes_group_project/badge.svg?branch=master)](https://coveralls.io/github/margocramer/commutes_group_project?branch=master)


All Aboard is for those who love to find the best way of getting from point A to point B. The application allows users to view, create and review other users' commutes. Commutes include information about starting and ending locations, travel time, and mode of transit. Integrating Ruby on Rails, Devise, ActiveRecord and React was a primary goal of the All Aboard development process.


#Functionality


-Prior to login or registration users can view existing commutes and view reviews of those commutes.


-Users are able to use the search bar to query the database for commutes that match the location of their desired commute     points.


-Logged in users can view commutes and reviews of those commutes. They can also edit and delete the commutes and the reviews that they have posted.

-Logged in users are also able to use the search bar to filter out commutes for desired commute locations.


-If a user posts a new commute review, the user who created that review receives an email alert.


#Technologies


-React
React navigation enables a response user interface on the index pages and the commute display pages.


-Ruby on Rails
Commute and commute review forms are built in Rails.


-Devise
Devise used for user authentication and authorization.


-ActionMailer
Automated email functionality enabled by ActionMailer.

-Carrierwave
Carrierwave was used to upload and storage user profile photos.


-Testing
--Capbyara feature tests
--KARMA controller tests
--RSPEC database and mailer tests


# commutes_group_project
