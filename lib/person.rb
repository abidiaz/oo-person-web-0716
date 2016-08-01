class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name, :friend
def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
  @friend = friend
end

# def bank_account
#   @bank_account
# end

def happiness
  @happiness
    [[10, @happiness].min, 0].max #this line belongs in the getter? 
end

def hygiene
  @hygiene
  [[10, @hygiene].min, 0].max
end

def happy?
  if @happiness > 7
    true
  else
    false
  end
end

def clean?
  if @hygiene > 7
    true
  else 
    false
  end
end

def get_paid(amount)
  @bank_account += amount
  if amount >= 100
    "all about the benjamins"
  else
    nil
  end
end

def take_bath
  self.hygiene += 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out 
  self.hygiene += -3
  self.happiness += 2
  "♪ another one bites the dust ♫"
end

def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def happiness=(happiness)
  @happiness = happiness #why is this needed if the attr_accessor has a :happiness_index
end

def hygiene=(hygiene)
  @hygiene = hygiene

end

def start_conversation(friend, topic)
  if topic == "politics"
    self.happiness += -2
    friend.happiness += -2
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness += 1
    friend.happiness += 1
    "blah blah sun blah rain"
  else topic == "other"
    "blah blah blah blah blah"
  end
end




end
