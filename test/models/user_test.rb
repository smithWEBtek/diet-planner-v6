require 'test_helper'
class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  test 'meals_attributes=' do
    params = {
      :user => {
        :username => "ted",
        :email => "ted@abc.com",
        :password => "pointer",
        :weight => "190",
        :diet_id => "3",
        :meals_attributes => [
          {:meal_name_id => "1", :food_id => "2", :qty => "3", :note => "I had a fine meal"},
          {:meal_name_id => "2", :food_id => "4", :qty => "2", :note => "You gonna eat that?"},
          {:meal_name_id => "3", :food_id => "6", :qty => "7", :note => "What only 3 shrimps?"}
        ]
      }
    }
    user = User.new(params[:user])
    user.save
    assert_equal user.meals.size, 1
    # assert_equal user.meals.last.food_id, 6
    # assert_equal user.meals.first.note, "I had a fine meal"
    # assert_equal user.meals.first.food_id, 2
  end
end
