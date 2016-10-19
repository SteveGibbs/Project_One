# Simple Travel Website
[Click here to see live Project (hosted on Heroku)](https://travelsgibbs.herokuapp.com/)

## Description
A simple travel website built on Rails to consolidate the use of associations and to incorporate a couple of APIs.  

A country has_many :cities.  A city belongs_to :country and has_and_belongs_to_many :tours.  A tour has_and_belongs_to_many :users and :cities, while a user has_secure_password and has_and_belongs_to_many: tours.  

Project designed and deployed within four days as part of General Assembly's Web Development Immersive bootcamp (week 6 project week).  The website is non-commercial and purely for educational purposes only.  

## Designed by
[Steve Gibbs](https://github.com/SteveGibbs)

## Features

#### Customer

1. Customer navigates from country to associated cities to associated tours.
2. Search menu on landing page can be used to auto-navigate to option.
3. Display of current weather for city chosen.   
4. Secure login and view ability tours booked.  

#### Admin
1. Edit country, city and tour parameters.
2. Secure login and view and edit ability for tours booked for users.  

## User instructions
#### Admin login details:
- Email: johndoe@gmail.com
- Password: chicken

#### Customer login:
- Email: janedoe@gmail.com
- Password: chicken

## Technology stack
- [Ruby on Rails](http://guides.rubyonrails.org/)
- [OpenWeatherMap](https://openweathermap.org) for city weather
- [Materialize-sass](http://materializecss.com/sass.html) for CSS design
- [jQuery](https://jquery.com/) library
- bcrypt 3.1.7 for password encryption
- Ruby, JavaScript, HTML5 and CSS3 as programming languages
- [Heroku](https://www.heroku.com/) for cloud deployment

## New features under consideration
- **Shopping cart functionality as booking are currently seeded**
- **Image carousels**
