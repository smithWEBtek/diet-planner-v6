class Log < ApplicationRecord
  belongs_to :user
  validates :note, presence: true
  validate :date_validator

  def date_validator
    unless self.date <= Time.zone.now
      self.errors[:date] << 'cannot be in the future.'
    end
  end  

  def total_log_cals
    self.meals.each do |meal|
      log_cals.push(meal.qty * meal.food.cals) 
      log_cals.inject(0) {|sum, x| sum + x}
     end
    log_cals
  end
end
