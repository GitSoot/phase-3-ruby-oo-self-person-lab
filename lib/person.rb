class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
  end

  def happiness=(value)
      @happiness = value > 10 ? 10 : value < 0 ? 0 : value
  end

  def hygiene=(value)
      @hygiene = value > 10 ? 10 : value < 0 ? 0 : value
  end

  def happy?
      @happiness > 7
  end

  def clean?
      @hygiene > 7
  end

  def get_paid(salary)
      @bank_account += salary
      "all about the benjamins"
  end

  def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
  end

  def call_friend(person)
      [self, person].each {|i| i.happiness += 3 }
      "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
      objects = [self, person]
      if topic == "politics"
          objects.each {|i| i.happiness -= 2 }
          first, second = ["partisan", "lobbyist"]
      elsif topic == "weather"
          objects.each {|i| i.happiness += 1 }
          first, second = ["sun", "rain"]
      else
          first, second = ["blah", "blah"]
      end
      return "blah blah #{first} blah #{second}"
  end
end
