class Bartender
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # 'Getter' method for 'self.all' Class variable:
  def self.all
    @@all
  end

  def intro
    "Hello, my name is #{self.name}!"
  end

  def make_drink
    @cocktail_ingredients = []
    choose_liquor
    choose_mixer
    choose_garnish
    "Here is your drink. It contains #{@cocktail_ingredients}"
  end

  # NOTE: We are making the following section's methods as 'private'
  # since only the bartender himself should be aware of the exact steps
  # and also since it would be rude for the customer to observe the involved steps
  private

  def choose_liquor
    @cocktail_ingredients << "whisky"
  end

  def choose_mixer
    @cocktail_ingredients << "vermouth"
  end

  def choose_garnish
    @cocktail_ingredients << "olives"
  end

end

phil = Bartender.new("Phil")
puts "phil.intro: ", phil.intro()

nancy = Bartender.new("Nancy")
puts "nancy.intro: ", nancy.intro()

puts "Bartender.all: ", Bartender.all()

# NOTE: Commenting this out because 'initialize' is private by default:
# puts "Calling private method, phil.initialize: ", phil.initialize

# NOTE: Also commenting out this section too since .choose_liquor() is a private method:
# puts "Calling private method, phil.choose_liquor: ", phil.choose_liquor()

puts "\nphil.make_drink() which calls the private method, .choose_liquor(): ", phil.make_drink
