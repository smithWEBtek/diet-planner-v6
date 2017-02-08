class User < ApplicationRecord
  enum role: [:standard, :admin]
  after_initialize :set_default_role, :if => :new_record?

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable, 
        :omniauthable, omniauth_providers: [:facebook]
  
  has_many :meals
  has_many :foods, through: :meals
  belongs_to :diet
  has_many :logs

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
  
  scope :undieters, -> { where(diet_id: '1')}
  scope :vegans, ->{ where(diet_id: '2')}
  scope :lowcarbers, ->{ where(diet_id: '3')}
  scope :balancers, ->{ where(diet_id: '4')}
  scope :fishatarians, ->{ where(diet_id: '5')}
  scope :carnivores, ->{ where(diet_id: '6')}
  scope :lumberjacks, ->{ where(diet_id: '7')}
  scope :vampires, ->{ where(diet_id: '8')}
  scope :junkers, -> { where(diet_id: '9')} 

  def self.group_cals(group)
    cals = []
    group.each do |user|
      user.meals.each do |meal|
        cals.push(meal.food.cals)
      end
    end
    cals.inject(0) {|sum, x| sum + x}
  end

  def self.group_meals_count(group)
    meals_count = []
    group.each do |user|
      meals_count.push(user.meals.count)
    end
    meals_count.inject(0) {|sum, x| sum + x}
  end

  def self.avg_cals_per_meal(group)
    if group_meals_count(group) > 0
      group_cals(group) / group_meals_count(group)
    end
  end

  def user_cals
    cals = []
    self.meals.each do |meal|
      cals.push(meal.food.cals)
    end
    cals.inject(0) {|sum, x| sum + x}
  end

  def user_avg_cals_per_meal
    if self.meals.count > 0
      user_cals / self.meals.count
    end
  end

  def set_default_role
    self.role ||= :standard
  end

  def self.from_omniauth(user_data)
    where(provider: user_data.provider, uid: user_data.uid).first_or_create do |user|
      user.uid = user_data.uid
      user.email = user_data.info.email
      user.password = Devise.friendly_token[0, 20]
      user.username = user_data.info.name
      user.image = user_data.info.image
    end
  end

  def join_date
    self.created_at.to_date
  end

  def meals_attributes=(meals_attributes)
    meals_attributes.each do |i, meal_attributes|
      if meal_attributes[:food_id].present?
        self.meals.create(meal_attributes)
      elsif meal_attributes[:new_food] !=""
        food = Food.find_or_create_by(name: meal_attributes[:new_food])
        meal_attributes[:food_id] = food.id
        meal = self.meals.create(meal_attributes)
        meal.new_food = ""
        meal.save
       else
        self.errors.full_messages
      end
    end
  end

  private
    def self.admin?
      !!self.role == "admin"
    end
end
