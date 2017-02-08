class Quote < ApplicationRecord
  belongs_to :celeb
  belongs_to :verb
  belongs_to :adj
  belongs_to :food
  belongs_to :phrase

#   def build_quote
#
# # instantiate an instance of Quote
# randomly find an instance of star, food, verb

# @quote = Quote.find

# @star = Star.find(rand(1..10))

# @food = Food.find(rand(1..10))

# @verb = Verb.find(rand(1..10))

# @adj = Adj.find(rand(1..10))

    # @count = Quote.all.count
    #
    # @quote = Quote.find(x)
    # @star =




end
