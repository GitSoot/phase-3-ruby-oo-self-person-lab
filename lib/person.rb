# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def bank_account=(amount)
      @bank_account = amount
    end
  
    def happiness=(amount)
      @happiness = [10, [0, amount].max].min
    end
  
    def hygiene=(amount)
      @hygiene = [10, [0, amount].max].min
    end
  
    def happy?
      happiness > 7
    end
  
    def clean?
      hygiene > 7
    end
  
    def get_paid(amount)
      @bank_account += amount
      'all about the benjamins'
    end     

    def take_bath
          self.hygiene = [self.hygiene + 4, 10].min
          '♪ Rub-a-dub just relaxing in the tub ♫'
    end
      
    def work_out
          self.hygiene = [self.hygiene - 3, 0].max
          self.happiness = [self.happiness + 2, 10].min
          '♪ another one bites the dust ♫'
    end
end
  