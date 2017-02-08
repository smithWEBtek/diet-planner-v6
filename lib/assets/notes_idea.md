
scope :vegans, ->{ where(diet_id: '2')}  
  vegans eat: 
    2 vegetables
    3 nuts
    4 fruits
    7 legumes
    11 grains

scope :lowcarbers, ->{ where(diet_id: '3')} 
  low-carbers eat: 
    2 vegetables
    3 nuts
    4 fruits
    5 meat & poultry
    6 fish
    7 legumes
    12 dairy

scope :balancers, ->{ where(diet_id: '4')}
  balancers eat: 
    2 vegetables
    3 nuts
    4 fruits
    5 meat & poultry
    6 fish
    7 legumes
    11  grains
    12 dairy

scope :fishatarians, ->{ where(diet_id: '5')}
  fishatarian
    2 vegetables
    3 nuts
    4 fruits
    6 fish
    7 legumes
    11  grains
    12 dairy

scope :carnivores, ->{ where(diet_id: '6')}
  carnivore
    2 vegetables
    3 nuts
    4 fruits
    5 meat & poultry
    6 fish
    7 legumes
    11  grains
    12 dairy

scope :lumberjacks, ->{ where(diet_id: '7')} 
  lumberjack
    2 vegetables
    5 meat & poultry
    11  grains
    12 dairy

scope :vampires, ->{ where(diet_id: '8')}
  vampire
    5 meat & poultry

scope :junkers, -> { where(diet_id: '9')}
  junk
    8 desserts
    9 junkfood
    10 synthetics
 