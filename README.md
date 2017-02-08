# swt-diet-planner-v-001
simple app for showing diet, meal, food_groups and foods with user login and user data

User can sign up and authorize via Omnni-auth - Facebook.
User can sign up with info they enter:
  Username must be 3 characters or longer and unique.
  Email must be unique
  User has the option of entering their Weight, default is 500lbs, otherwise.
  User can choose Diet upon registering, but can also leave default "No diet chosen".
  User account page prompts User to choose a diet, otherwise displays Diet choice.

There are several Diets.
A User is on a single Diet, with multiple meals.
A Meal has a single Food and a quantity(qty).  
Qty * Cals = Total Cals for that meal.
Each Food has a calorie (cals) column, which gets added to math for Group Diet Stats and User Stats.
User can create a new Food while recording a Meal.
New Meal form allows multiple meals from either existing Food(s), or new Food created by User.
Foods all belong to a single Group (FoodGroup).
Foods are created with default calories of 1 calorie, but can be updated by Admin.
Admin assigns any new User-created Foods to a Group(FoodGroup).



User can edit their own Logs, Meals and create Foods, but cannot view other User's info.
User Diet stats are aggregated with other Users on same Diet.
User Stats are calculated based on User's meals.




# README

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
