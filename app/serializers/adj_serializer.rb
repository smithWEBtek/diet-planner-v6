class AdjSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :quotes, serializer: QuoteSerializer
end
