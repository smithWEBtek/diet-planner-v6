class Quote < ApplicationRecord
  belongs_to :celeb
  belongs_to :verb
  belongs_to :adj
  belongs_to :food
  belongs_to :phrase
  belongs_to :diet

  def self.build_random_quotes
    5.times do
      @quote = Quote.new
      @quote.celeb = Celeb.find(rand(1..10))
      @quote.verb = Verb.find(rand(1..10))
      @quote.adj = Adj.find(rand(1..10))
      @quote.food = Food.find(rand(1..10))
      @quote.phrase = Phrase.find(rand(1..10))
      @quote.diet = Diet.find(rand(2..9))
      @quote.save
    end
  end

  def build_quote
    quote = self
    "#{quote.celeb.name}, #{quote.verb.name} a #{quote.adj.name} #{quote.food.name}, while on the #{quote.diet.name} diet, and said, '#{quote.phrase.content}'"
  end

end
