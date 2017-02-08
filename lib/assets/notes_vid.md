About the app
  Users register and track their Diets, Meals, Calories and Log their experiences
  Users participate in groups of like-minded Dieters, to compare cals consumed, avg cals, etc.
Data model
  Users
  Foods
  Groups
  Diets
  Meals
Active Record relationships
  User has_many :meals
       belongs_to :diet

  Meal belongs_to :user
       belongs_to :food 

  Food belongs_to :group
       has_many :meals
  Group has_many :foods
  Diet has_many :users

  Log belongs_to :user
      has_many :meals, through: :user

Rails Assessment requirements
  nested resource
  nested form
  scoped class method
  dry
  Omni Auth e.g. auth via Google, Facebook, Github, etc.
Overview of code

Interaction with the site

Demo reqs being met

