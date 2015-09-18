[![Build Status](https://travis-ci.org/ojlamb/Virtual-Assistant-App.svg?branch=master)](https://travis-ci.org/ojlamb/Virtual-Assistant-App)

# Week 6

###Lab Week.

View a live version of our app here:
https://makersacademy-labweek.herokuapp.com/

We decided to go on with building a virtual assistant application that can record your tasks for you.
The brainstorming session we had led us to think about more ideas. We realised quite early that we should try to  incorporate many of the skills that we picked up since the first week.

We went on to scripting the user stories and we decided on the following:

####User Stories:
```
As a user
So that I can use the service
I would like to enter my details
```
```
As a user
So that i can keep track of my tasks
I would like to store my tasks online
```
```
As a user
So that I know what I am doing
I would like to be reminded of my tasks
```
```
As a user
So that I can organise my tasks
I would like to be able to add tags to them
```
```
As a user
So that i know when important dates occur
I would like to view them on a calendar
```
```
As a user
So that I don’t plan a journey on a stormy day
I would like to be able to check the weather.
```
```
As a user
So that I know where where places are
I would like to be able to search on a map.
```


---

####Screenshots
See the screenshots below of how our application looked by the end of the week:


*Home page/landing page*
![landing](https://github.com/Kyvyas/lab-week-team-katya/blob/master/images/landing.png)
*Sign up page*
![signup](https://github.com/Kyvyas/lab-week-team-katya/blob/master/images/signup.png)
*Sign in page*
![signin](https://github.com/Kyvyas/lab-week-team-katya/blob/master/images/signin.png)
*User logged in, showing weather search functionality*
![weather](https://github.com/Kyvyas/lab-week-team-katya/blob/master/images/weather.png)
*User logged in, showing map search functionality*
![map](https://github.com/Kyvyas/lab-week-team-katya/blob/master/images/map.png)
*User logged in, showing tasks added*
![tasks](https://github.com/Kyvyas/lab-week-team-katya/blob/master/images/tasks.png)


---

####Technologies Used:
* Sinatra
* Ruby logic for CRUD operations
* Javascript logic for weather and maps
* Datamapper as the ORM
* PostgreSQL Database
* HAML
* Bootstrap mainly for the grid system and responsiveness
* Factory girl
* RSpec & Capybara for testing


---

####Main Takeaways/Challenges:

* We found associations to be quite the handful, especially when we were trying to filter tasks by tags specific to the logged in user. We solved this by creating many-many relationships between:
    * users and tags
    * users and tasks
* While developing the delete tasks feature, we had to leverage data-mapper's `dm-constrainsts` plugin, which allowed us to delete the parent record while simultaneously


---

####Team
* [Benjamina](https://github.com/benja2208)
* [Giuseppe](https://github.com/giusepped)
* [Katya](https://github.com/Kyvyas)
* [Owen](https://github.com/ojlamb)
* [Raph](https://github.com/raphlevy)
* [Zaid](https://github.com/zlahham)
