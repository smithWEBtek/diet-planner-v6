class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :phrase_id, :celeb_id, :verb_id, :food_id, :adj_id, :diet_id
  belongs_to :celeb
  belongs_to :verb
  belongs_to :adj
  belongs_to :food
  belongs_to :phrase
  belongs_to :diet

end
