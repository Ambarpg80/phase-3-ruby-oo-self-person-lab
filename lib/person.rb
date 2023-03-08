require 'pry'

class Person
    attr_reader :name 
    # attr_writer 
    attr_accessor :bank_account, :happiness, :hygiene, :happy
   
    def initialize(name)
        
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
   end
  
   def happiness=(number)
       @happiness = number.clamp(0,10) 
    end

    def hygiene=(number)
       @hygiene = number.clamp(0,10) 
    end

    def happy?
        happy = @happiness > 7 ? true : false
    end          

    def clean? 
        clean = @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account = @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
       if hygiene=(self.hygiene += 4)
       return "♪ Rub-a-dub just relaxing in the tub ♫"
       else 
        return 10
      end
    end

    def work_out
        if hygiene=(self.hygiene -= 3) 
            happiness=(self.happiness += 2)
            return "♪ another one bites the dust ♫"
            else 
             return @hygiene = 0 
              @happiness = 10
           end
         end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{ self.name}. How are you?"
    end

    def start_conversation(friend, topic)
         case topic
        when 'politics'
            self.happiness -= 2
            friend.happiness -= 2
           return  "blah blah partisan blah lobbyist"
        when  'weather'
            self.happiness += 1
            friend.happiness += 1
           return  "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
      end
    
     
            



end
