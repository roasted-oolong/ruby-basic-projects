#The Object Model Exercise #1: Create an object
class emotion
end

happy = emotion.new

#The Object Model Exercise #2: Create module for class in exercise one
module emote(emote_sound)
end

class emotion
    include emote
end

happy = emotion.new

#Classes and Objects Pt.1 Exercise #1~2
#Create MyCar class
#Allow user to define year, color, and model of car
#Create instance variable set to 0 during instantiation of object
#to track current speed of car
#Create instance methods that allow car to speed up, break, and shut off
#Add accessor method to MyCar class to change and view color of car
#Add accessor method to MyCar class to only view year of car
class MyCar
    attr_accessor :color
    attr_reader :year

    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
        @speed = 0
    end

    def speed_up(number)
        @speed += number
        puts "You are accelerating by #{number} mph"
    end

    def break(number)
        @speed -= number
        puts "You are de-celerating by #{number} mph"
    end

    def shutoff
        @speed = 0
        puts "Shutting down..."
    end
end