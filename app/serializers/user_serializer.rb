class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :weight, :diet_id , :image, :role, :email
  has_many :meals
  has_many :foods, through: :meals
  belongs_to :diet
  has_many :logs
end
