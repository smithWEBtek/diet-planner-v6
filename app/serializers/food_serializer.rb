class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :cals, :group_id
  belongs_to :group
end
