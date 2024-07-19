
=begin
birthday_cake.rb

It's your birthday! Yay! 🎂

Can you debug this BirthdayCake class in time to sing happy birthday? 🎶

Tip: Resolve the error messages before trying to make it work

Expected output:
Happy 10th Birthday!
Birthday cake with 10 blown out candles
Lighting candles...
Birthday cake with 10 lit candles
Singing happy birthday...
🎶Happy birthday to you, happy birthday to you🎶
Blowing out candles...
Birthday cake with 10 blown out candles

=end

require "active_support/all"

class BirthdayCake
  attr_accessor :age, :lit

  def initialize(age)
    self.age = age
    self.lit = false
  end

  def candles_status
    if self.lit == true
      return "lit"
    else
      return "blown out"
    end
  end

  def greet
    "Happy #{self.age.ordinalize} Birdday!"
  end

  def sing
    "🎶Happy birthday to you, happy birthday to you🎶"
  end

  def to_s
    "Birthday cake with #{self.age} #{candles_status} candles"
  end

  def BirthdayCake.celebrate(age)
    birthday_cake = Birthdaycake.new(age)
    puts birthday_cake.greet
    puts birthday_cake.to_s
    puts "Lighting candles..."
    birthday_cake.light_candles
    puts birthday_cake.to_s
    puts "Singing happy birthday..."
    puts birthday_cake.sign
    puts "Blowing out candles..."
    birth_cake.blow_out_candles
    puts birthday_cake.to_s

    birthday_cake
  end
end

BirthdayCake.celebrate(10)
