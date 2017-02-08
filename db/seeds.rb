DATA_celebs = {
  :celeb_keys =>
    ["name"],
  :celebs => [
    ["Beyonce"],
    ["Jay-Z"],
    ["Lady GaGa"],
    ["Liam Neeson"],
    ["Elvis"],
    ["James Brown"],
    ["Patton Oswalt"],
    ["Ted Kennedy"],
    ["Roosevelt"],
    ["Ben Franklin"]
  ]
}

DATA_verbs = {
  :verb_keys =>
    ["name"],
  :verbs => [
    ["ate"],
    ["wolfed"],
    ["sucked down"],
    ["ingested"],
    ["nibbled"],
    ["sampled"],
    ["drank"],
    ["dined on"],
    ["chose"],
    ["stole"]
  ]
}

DATA_adjs = {
  :adj_keys =>
    ["name"],
  :adjs => [
    ["ate"],
    ["wolfed"],
    ["sucked down"],
    ["ingested"],
    ["nibbled"],
    ["sampled"],
    ["drank"],
    ["dined on"],
    ["chose"],
    ["stole"]
  ]
}

DATA_phrases = {
  :phrase_keys =>
    ["content"],
  :phrases => [
    ["It is important to check the fish water level in the morning."],
    ["There are only 2 of them left now."],
    ["I understand Brittney Spears favors these."],
    ["Why do people always say 'without further do do?'"],
    ["Is there a wrapper that comes with this, like a burrito?"],
    ["Why does it smell so fishy?"],
    ["Who opened this dish, did they mix it with peanut butter?"],
    ["This goes well with a bag of Fritos."],
    ["I prefer the spicy version of this."],
    ["If Kanye wants it, then he'll have it!"]
  ]
}

DATA_quotes = {
  :quote_keys =>
  ["celeb_id", "verb_id", "adj_id", "phrase_id", "food_id", "diet_id"],
  :quotes => [
    [1,1,1,1,1,2],
    [1,1,1,1,2,3],
    [1,1,1,1,3,4],
    [1,1,1,1,4,5],
    [1,1,1,1,5,6],
    [1,1,1,1,6,7],
    [1,1,1,1,7,8],
    [1,1,1,1,8,9],
    [1,1,1,1,9,10],
    [1,1,1,1,10,2]
  ]
}

def make_celebs
  DATA_celebs[:celebs].each do |celeb|
    new_celeb = Celeb.new
    celeb.each_with_index do |attribute, i|
      new_celeb.send(DATA_celebs[:celeb_keys][i]+"=", attribute)
    end
    new_celeb.save
  end
end

def make_verbs
  DATA_verbs[:verbs].each do |verb|
    new_verb = Verb.new
    verb.each_with_index do |attribute, i|
      new_verb.send(DATA_verbs[:verb_keys][i]+"=", attribute)
    end
    new_verb.save
  end
end

def make_adjs
  DATA_adjs[:adjs].each do |adj|
    new_adj = Adj.new
    adj.each_with_index do |attribute, i|
      new_adj.send(DATA_adjs[:adj_keys][i]+"=", attribute)
    end
    new_adj.save
  end
end

def make_phrases
  DATA_phrases[:phrases].each do |phrase|
    new_phrase = Phrase.new
    phrase.each_with_index do |attribute, i|
      new_phrase.send(DATA_phrases[:phrase_keys][i]+"=", attribute)
    end
    new_phrase.save
  end
end

def make_quotes
  DATA_quotes[:quotes].each do |quote|
    new_quote = Quote.new
    quote.each_with_index do |attribute, i|
      new_quote.send(DATA_quotes[:quote_keys][i]+"=", attribute)
    end
    new_quote.save
  end
end

def main
  make_celebs
  make_verbs
  make_adjs
  make_phrases
  make_quotes
end

main
