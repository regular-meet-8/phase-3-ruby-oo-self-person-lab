# your code goes here

class Person
    attr_accessor :bank_account , :happiness ,:hygiene

def initialize (name)
    @name =name
    @bank_account=25
    @happiness=8
    @hygiene=8
end

def name 
    @name
end


def happiness=(number)
    @happiness=number.clamp(0,10)
end

def hygiene=(number)
    @hygiene=number.clamp(0,10)
end

def happy?
  self.happiness > 7
end

def clean?
    self.hygiene > 7
end

def get_paid amount
    self.bank_account += amount
    "all about the benjamins"
end

def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.hygiene -= 3
    self.happiness +=2
    '♪ another one bites the dust ♫'
end

def call_friend (name)
self.happiness +=3
name.happiness += 3
"Hi #{name.name}! It's #{self.name}. How are you?"
end

def start_conversation (obj , topic)
if topic == "politics"
    [obj , self].each {|person| person.happiness -=2}
    return 'blah blah partisan blah lobbyist' 
elsif topic == "weather"
    [obj , self].map {|person| person.happiness +=1}
    return 'blah blah sun blah rain'
else
    return 'blah blah blah blah blah'
end

end
end
