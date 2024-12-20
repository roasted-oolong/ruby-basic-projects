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

#Classes and Objects Pt.1 Exercise #3
#Create spray_paint method that can be called on an object and
#will modify the color of the car
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

    def spray_paint(color)
        self.color = color
        puts "You've spray painted your car #{color}"
    end
end


#Classes and Objects Pt.2
#1 Add class method to MyCar class that calculates gas mileage
#2 Override the to_s method to create a user friendly print out of your object
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

    def spray_paint(color)
        self.color = color
        puts "You've spray painted your car #{color}"
    end

    def self.gas_mileage(gallons, miles)
        puts "#{miles / gallons} miles per gallon of gas"
    end

    def to_s
        puts "My car is a #{color} #{year} #{@model}!"
    end
end


#Inheritance
#1 Create a superclass called Vehicle.
# Move behavior that's NOT specific to MyCar to the superclass
#Create a constant in MyCar class that stores info about vehicle that
#makes it different from other types of Vehicles
#Then create class MyTruck that inherits from superclass that also has
#a constant defined that separates it from MyCar class in some way
#2 Add a class variable to your superclass that can keep track
#of the number of objects created that inherit from the superclass
#Create a method to print out the value of this class variable as well
class Vehicle
    @@number_of_vehicles = 0

    def self.number_of_vehicles
        puts "There are currently #{@@number_of_vehicles} vehicles."
    end

    def shutoff
        @speed = 0
        puts "Shutting down..."
    end

    def age
        puts "The car is #{find_age} years old."
    end

    private
    def find_age
        time_passed = Time.now.year - self.year
    end
end

class MyCar < Vehicle
    ANDROID_AUTO = true
end

class MyTruck < Vehicle
    ANDROID_AUTO = false
    include Liftable
end

module Liftable
    puts "This car is lifted"
end

puts "--- Vehicle method lookup ---"
puts Vehicle.ancestors

puts "--- MyTruck method lookup ---"
puts MyTruck.ancestors