# your code goes here
require 'pry'

class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
    @happiness
  end

  def hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
    @hygiene
  end

  # PART 2 NON-ATTRIBUTE INSTANCE METHODS
  def happy?
    return @happiness > 7 ? true : false
  end

  def clean?
    return @hygiene > 7 ? true : false
  end

  def get_paid(salary_amt)
    @bank_account += salary_amt
    return 'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end


end
