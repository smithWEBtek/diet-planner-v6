notes: rails portfolio project: diet-planner


170213
Rails assessment notes: 

  Monday, February 13, 2017
  8:51 AM

  Questions: 
    1. User update account, logs out.
    2. User edit form, error code made it hang indefinitely.

ToDo before next mtg: 
  Install instructions
  License file, MIT open source
  Contributors Guide
  More commits


  Add nested Log form to Edit User Page:
  http://stackoverflow.com/questions/39628394/custom-attribute-setter-method-in-nested-forms

  Read Rubber Duck article(s): 
  https://en.wikipedia.org/wiki/Rubber_duck_debugging

At next mtg: 

Refactor Feature:
  1. Issue with User Edit form, logging out after updating User
    a. Had to remove the Error Handling code, to get it 'working'
    b. Currently, after a User edits and saves:
      i. Flash message shows update successful
      ii. User show page doesn't refresh
      iii. If you refresh, it signs you out and you have to log back in.
  2. Something sexier with scoped resource(s)

  Pair coding:  demo in console
    User.first.meals.build
    User.last.logs.build



170208

change title to diet-tracker

admin reports

ungrouped foods
  user created foods, to confirm group choice
  perhaps set up a submission process for user assigned foods

user cancellation requests

edit videos

--------------------------------------------------
170205

-[] Demo video
-[] Sort links in Foods index, by Cals, Group, Diet
-[] Admin view / report of 'no group chosen' foods, to edit/update

Issues:  Critical - High - Med - Low
-[] Issue:Med
    User/:id/edit, updates, but logs user out, should go to the show page
      - not sure, but maybe Devise is doing this(?)
-[] Issue:High:
    Facebook login fails 1st time, (usually), then succeeds, why?
      - possibly an issue with 'sign_out' method?

-[x] Edit meal won't allow 'new_food'
-[x] get field_with_errors working on new meal form
    - must have one or the other, cannot have both (food_id, or new_food)

-[x] Your forms should correctly display validation errors. Your fields should be enclosed within a fields_with_errors class and error messages describing the validation failures must be present within the view.
-[x]  users_controller.rb:  # before_action :authorize_admin, only: [:edit, :update, :destroy]

--------------------------------------------------

170204
-[x] View partials naming convention:
model = singular name, show a single: @model
models = plural name, index all: @models
form = edit or new single model: @model

-[x] food:     [x]food, [x]foods, [x]form
-[x] diet:     [x]diet, [x]diets, [x]form
-[x] group:    [x]group,[x]groups,[x]form
-[x] meal:     [x]meal, [x]meals, [x]form
-[x] user:     [x]user, [x]users, [x]form
-[x] mealname: [x]mealname, [x]mealnames, [x]form
-[x] log:      [x]log, [x]logs, [x]form

-[] error msgs based on model validations, appear in forms
-[x] food:     [x]new, [x]edit
-[x] diet:     [x]new, [x]edit
-[x] group:    [x]new, [x]edit
-[x] meal:     [x]new, [x]edit
-[x] user:     [x]new, [x]edit
-[x] mealname: [x]new, [x]edit
-[x] log:      [x]new, [x]edit

-[x] User Profile "please choose a diet" msg, should only display if "no diet chosen"

--------------------------------------------------
170203

-[x] food_attributes= method for first_or_create(name: food_attributes[:name])


----------------------------------------------------------------------------

170202

----------------------------------------------------------------------------
170201

_ [X] Meals is invalid, error again. (had :food instead of :id, after trying to sort. fixed)
- [X]  -DietStats MathMethods moved to Application Controller
- [X] Direct model calls from views, there are some lurking!
- [X] Sort collection_select by name instead of ID: ex: Author.order('created_at DESC'),
- [X] Meal form fix: direct User to create new Food, if not in drop down
    better yet, create a form to capture text input and find or create Food
    - for now, we'll put up a link and directions to create a food if you dont' see it in the list.
- [X] DietDashboard => users/:id/show page w/ partials for sections
- [X]   -Implement partials in views for DietDashboard and user/:id/show
- [X]   -Replace main nav bar; move to user/show page with partials
- [X]  -Meal form can handle 1 or more meals
- [X] Waste most of the day trying to nest a form in a nested form, give up and do simpler
- [X]  -User can create new food in new meal form (NOT HAPPENING)
    ---if you want a new food that is not in the list, User create it via foods/new

170131
- [X]  -Create partials for all indexes
- [X]  -Meal form defaults to today's date
- [X]  -Log form defaults to today's date

170130
- [X] diet destroy method, reassigns default diet value 10
- [X] divide by 0 error
      # def self.avg_cals_per_meal(group)
      #   group_cals(group) / group_meals_count(group)    
      # end
- [X] admin creates user, not saved
- [X] partials in views for indexes
- [X] Total cals per meal
- [X] Total cals per date
- [X] DietStats

- [X] for each diet: scope method to create that Diet's diet_user_group

      @vegans_cals = User.group_cals(User.vegans)
      @balancers_cals = User.group_cals(User.balancers)  
      @lowcarbers = User.group_cals(User.lowcarbers)   
      @fishatarians = User.group_cals(User.fishatarians)    
      @carnivores = User.group_cals(User.carnivores)   
      @lumberjacks = User.group_cals(User.lumberjacks)    
      @vampires = User.group_cals(User.vampires)
      @junkers = User.group_cals(User.junkers)

    for each diet_user_group: self.total_cals method, for # of cals for group
    collect each diet_user_group in an array
    iterate over that array in the view

      __DIET___UserGroupName_______Total Cals___#of Meals_____AvgMealCals____


170129

-[] DietStats
-[] admin can change standard user to admin role
-[] implement partials for user views, similar to admin views
-[] Add sort_by links at the top of table data
-[] MyDietDashboard at the top of page with DietStats
      - Use for reporting on diet / calorie process
      - Cals consumed today, cals vs diet goals
      - Status vs Diet
      - Ranking among dieters on same diet
-[] MyJournal
      - FORM:
          Create a note on anything, can be journal of diet, emotions, reminders, recipes
          Title and content boxes only
          Record selfie video option
          Journal entries have their own form and save button
      - VIEW:
          List of past journal entries (headings) to scroll
      - Bording the form: Snapchat videos of forum friends with their latest encouraging video snippet
      - Soft Core Diet Porn:
          Hot people eating health foods, winking at the camera

-[] MyDietSupport (opt-in) actions
      - Opt in to email support
      - Opt in to fellow dieter support
      - Encouraging Email from the system if you go over cals for day goal
      - LifeLine email to your (opt-in) support group if you go over 3 days in a row or fail to log diet 3 days
      - Share your success button: (HOORAY, I have stayed on the "#{ diet.name }" diet for "#{ duration_on_days }" days!)
- [X] MyMeals
      -FORM: Multiple Meals with existing user, via nested form

- [X] Scoped resource: users/:id/logs/:id
- [X] Get nested resource requirement working with logs nested under user
      - Migration CreateLogs references:user


170128
  created branch to nest meals under user
  see if not needed first!

170127

- [X]User can create multiple meals
- [X] admin page, shortcuts to Users, Logs, Meals
- [X] users should not be able to edit diets or groups, only admins can

170125
merged v2 into v1
Facebook Omniauth works

170123
Log requiring meal_id and food_id, is messing me up when I create a journal entry using the log/new form.

Nested form, like home addr, biz addrs, space addrs

log_journal
log_breakfast
log_snack1
log_lunch
log_snack2
log_dinner
log_snack3

remove the Active Record assciations between Meal, Food and Log
Log only references meal_id, food_id, if needed.


170121

Description of DietPlanner app, models and flow

Users sign up, sign in, can authorize via Facebook Omniauth
  User defaults: diet: "no diet chosen", weight: 500, admin: "false"
  User must provide unique name, email and password of 6..128 characters
  User can be admin, only if an existing admin updates their user.admin field to "true"
  User can EDIT their own data: name, email, password, weight, diet
  User can create new Diet, Food or Group


User
  Meal
    Name: Breakfast
    Food: Eggs
    Qty:  3

  Meal
    Name: Lunch
    Food: Ham Sandwich
    Qty:  1

  Meal
    Name: Snack
    Food: cookies
    Qty:  3

  Meal
    Name: Dinner
    Food: Meatloaf
    Qty:  1

user/:id/meals/:id



User
  :has_many :user_meals
  :has_many :meals, through: :user_meals

  id, name, email, password, diet_id, weight

Meal
  :has_many :user_meals
  :has_many :users, through: :user_meals
    id, name

UserMeal is an instance of: User has a meal
  :belongs_to :user
  :belongs_to :meal
    id, user_id, meal_id, food_id, qty, note


  user fills a form for a user_meal: (name: "breakfast") record
  user fills a form for a user_meal: (name: "lunch") record
  user fills a form for a user_meal: (name: dinner) record
  user fills a form for a user_meal: (name: "snack") record

  User has views for UserMeals

Food is a list of approx. 30 items, 3 for each of 10 Groups via a single (group_id)
  Food belongs_to :group
  Food has_many :meals

Group is a list of 10 main food categories: Friuts, Vegetables, Meat, Dairy, etc.
  User can great a new Food, choosing and existing Group, or creating a new one
  Choosing an existing Food includes the :group_id that food already has (not editable by User)
  Admin can reassign :group_id for an existing food (edit all foods)

Log(s): nested under User (/users/:id/logs/:id)
  User can CREATE their own Log entries, choosing log_type: "journal" || "meal"
    log_type: "journal" has user_id, date, note
    log_type: "meal"    has user_id, date, note, meal, food, qty
      validations need to be in place for this
  Admin can view all User Logs
  Admin cannot edit or destroy User Logs, unless the User is deleted
    need to add dependency here

Diet is a list of common diets (Vegan, Carnivore, Balanced Protein/Carb, Junk, etc.)
  Default is "no Diet chosen", User show page has a link prompting to "Choose a diet"
  User can VIEW existing Diets, Meals, Foods, Groups
  User can CREATE new Diet, Food, Group (Meal is static list, updatable by Admin only)


Day
  A reporting-only construct of 4 Meals, recorded by User as Log entries of log_type: "meal"
  The Log class will have named scopes for reporting.
  For example:

  class Log < ActiveRecord::Base
    scope :junk_dieters, -> { where(diet: 'junk')}
    scope :over_eaters, => { where(day_total_cals: > 3200) }

      Log.all.junk_dieters.each do |dieter|
      dieter.user.email   
      app sends them an email that they chose too much junk_food on this Day of 4 meals

    scope :over_eaters, => { where(day_total_cals: > 3200) }
      #gathers the Logs with this filter, returning the offending Users
      Log.all.over_eaters.each do |eater|
      eater.user.email
      app sends them an email that they ate too many calories on this Day of 4 meals

      Log.all.junk_dieters.over_eaters.each do |diabetic|
      diabetic.user.email
      app sends a broadcast email to all Users who have opted in to help each other manage diet & calories

  def cals_today(date_argument)
    # calc cals based on logs with 'date_argument)'
  end



Group: id, name
  {[id: 1, name: "fruits"], [id: 2, "vegetables"], [id: 3, name: "dairy"]}..etc.

Food: id, group, subgroup, name, description
  (1, fruit, citrus, orange, clementine special)

User: id, name, weight, diet(id)
  (1, bob, 203, carnivore)

Diet: id, name
  (1, LowCarb)

Meal: id, name
  (1, breakfast, lunch, dinner, snack)

Log: id, user, log_type, meal(id), food(id), qty, cals, note
  (id: 1, jane, meal, lunch, quiche, qty=>1, cals=>300, "great flaky crust" )




170119

start the Avi video at 37.00 into the recording.
at the point where he discusses addresses_attributes= vs addresses

-[] Consider reducing "log_entries" table to just "logs"
-[] Get NewLogEntry form working, using log_entries_attributes=
-[] Remove comments table
-[] Only admin can edit Diets, Meals, Foods, Groups
-[] User can edit the foods they created
-[] Dry up admin tasks, partials


-[] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)

-[] Class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)

-[] Nested form writing to associated model using custom attribute writer (form URL, model name e.g. /recipe/new, Item)

-[] Include nested resource show or index (URL e.g. users/2/recipes)

-[] Include nested resource "new" form (URL e.g. recipes/1/ingredients)


170118

- [X] Include third party signup/login (how e.g. Devise/OmniAuth)
- [X] Include signup (how e.g. Devise)
- [X] Include login (how e.g. Devise)
- [X] Include logout (how e.g. Devise)
- [X] Learn to work Github
  Learned FECPRM: Fetch Edit Commit PullRequest Merge
  Start working from branches and do the FECPRM cycle daily.

170117
Installed Devise
Got Sign In, Sign Out, register new user working
Struggled with nested routes
Watched Avi video, try again tomorrow

170116
Finish reducing the data model
  Add user:role_id's:  admin, editor, viewer,
  Build authentication logic and forms

Nest foods under food_groups

Get scope  and nested forms started
  Review readme
  Find example code for nested forms
    .build method in the view form
    .find_or_create_first (?not sure of name) method in object model.rb
  Scope
    examples of nested routes
    usage of scope in a web app
Review readme again


170115
considering changing relationships

Diet: Fishatarian

  Meal: breakfast
  Food: eggs
  FoodGroup: dairy
  User: bob

  Meal: lunch
  Food: salmon
  FoodGroup: fish
  User: bob

  Meal: dinner
  Food: salad
  FoodGroup: veggies
  User: bob





17011-[] custom css for flash on new user-diet-meal-food-group controllers and views-[] flesh out basic crud functions for user
  index, new, create, show, []edit, update, destroy-[] flesh out basic crud functions for diet
  index, new, create, show, []edit, update, destroy-[] flesh out basic crud functions for meal
  index, new, create, show, []edit, update, destroy-[] flesh out basic crud functions for food
  index, new, create, show, []edit, update, destroy-[] flesh out basic crud functions for group
  index, new, create, show, []edit, update, destroy

-[] add seed data for meal-food-group table-[] add seed data for user_diet, meal_food, food_group join tables-[] nested form for user to add a new foo-[] nested form function to associate new food with existing group-[] nested form for user to add a new mea-[] nested form function to associate new meal with existing diet-[] nested form for user to add a new die-[] nested form function to associate user with new diet


170113
EatRightWebSite:  plan and eat right by your choices

User
  belongs_to :diet
  id, name, email, password, weight, diet_id

Diet
  has_many :diet_meals
  has_many :meals, through: :diet_meals
  has_many :users
  id, name

DietMeal
  belongs_to :diet
  belongs_to :meal
  id, diet_id, meal_id

Meal
  has_many :diet_meals
  has_many :diets, through: :diet_meals
  id, name

MealDish
  belongs_to :meal
  belongs_to :dish
  id, meal_id, dish_id

Dish
  has_many :meal_dishes
  has_many :meals, through: :meal_dishes
  belongs_to :group
  id, name, group_id

    1, "lettuce",  veg => 1
    2, "apple",  fruit => 2
    3, "ice cream",  dessert => 3
    4, "cheese burger", junk => 4
    5, "salmon", fish => 5
    6, "duck", poultry => 6
    7, "pork", meat =>7
    8, "ho-ho", junk => 8

Group
  Fruits, Veggies, Junk,  Carbs, Meats, Desserts, Snacks
  id, name
  1, "fruit"
  2, "veg"
  3, "junk"
  4, "carb"
  5, "meat"
  6, "fish"
  7, "poultry"
  8, "nuts"
  9, "legumes"


User experience
  Users can register, login, logout
  Users can view public data
  Users can see only their private data
  Users can allow chosen data to be viewable to registerd users
  Users can allow chosen data to be viewable to public

Work steps:
Generate migrations, models, controllers and ActiveRecord relationships
Test with console

Create views
