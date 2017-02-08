
  # def self.make_user_groups
  #   DATA_user_groups ={
  #    :user_group_keys =>
  #       ["[:user_group"],
  #     :user_groups => [
  #       [:user_undieters = {User.undieters}],
  #       [:user_vegans = {User.vegans}],
  #       [:user_lowcarbers = {User.lowcarbers}],
  #       [:user_balancers = {User.balancers}],
  #       [:user_fishatarians = {User.fishatarians}],
  #       [:user_carnivores = {User.carnivores}],
  #       [:user_lumberjacks = {User.lumberjacks}],
  #       [:user_vampires = {User.vampires}],
  #       [:user_junkers = {User.junkers}]
  #     ] 
  #   }

  #   DATA_user_groups[:user_groups].each do |user_group|
  #     new_user_group = Log.new
  #     user_group.each_with_index do |attribute, i|
  #       new_user_group.send(DATA_user_groups[:user_group_keys][i]+"=", attribute)
  #     end
  #     new_user_group.save
  #   end
  # end

  def self.group_cals(group)
    cals = []
    group.each do |user|
      user.meals.each do |meal|
        cals.push(meal.food.cals)
      end
    end
    cals.inject(0) {|sum, x| sum + x}
  end
