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

##Ex.7
class Student
    attr_writer :grade

    def initialize(name, grade)
        @name = name
        @grade = grade
    end

    def better_grade_than?(other_person)
        if grade > other_person.grade
            puts "Well done!"
        end
    end

    protected
    def grade
        @grade
    end
end
joe = Student.new('joe',90)
max = Student.new('max',71)

#Code Quizzes
class Celsius
    def initialize(temperature)
      @temperature = temperature
    end

    def to_fahrenheit
        (@temperature * 1.8) + 36
    end
end
celsius = Celsius.new(10)
puts celsius.to_fahrenheit()

#Code Quizzes
class Dog
    def initialize(name)
        @name = name
    end

    def bark
        "Ruff ruff"
    end
end
tiki = Dog.new('tiki')
tiki.bark
###
class Insect
    def initialize(age_in_days)
      @age_in_days = age_in_days
    end

    def age_in_years
        @age_in_days.to_f / 365
    end
end
###
class Lamp
    def self.about_me
        "We brighten up people's lives"
    end
end
###
class WaterBottle
    def initialize(size)
      @size = size
    end

    def to_ounce
        size * 3
    end

    protected
    def size
        @size
    end
end
klean_kanteen = WaterBottle.new(24)
klean_kanteen.to_ounce
###
class Person
     def initialize(age)
        @age = age
    end

    def age=(new_age)
        @age = new_age
    end
end
thomas = Person.new(50)
thomas.age=(42)
thomas.age
###
module MathHelper
    def multiply_by_two(num)
        num * 2
    end
end

class Homework
    include MathHelper
end
my_homework = Homework.new
my_homework.multiply_by_two(4)
###
class BaseballPlayer
    def initialize(hits, walks, at_bats)
        @hits = hits
        @walks = walks
        @at_bats = at_bats
    end

    def batting_average
        @hits.to_f / @at_bats
    end

    def on_base_percentage
        (@hits + @walks).to_f / @at_bats
    end
end
pickles = BaseballPlayer.new(330, 110, 1125)
pickles.batting_average
pickles.on_base_percentage
###
class Person
    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
    end

    def full_name
        "#{first_name} #{last_name}"
    end

    protected
    def first_name
        @first_name
    end
    def last_name
        @last_name
    end
end
bob = Person.new("Bob", "Lob")
bob.full_name()
###
module MathHelpers
    def exponent(number, exponent)
        number ** exponent
    end
end

class Calculator
    include MathHelpers

    def square_root(number)
        exponent(number, 0.5)
    end
end
c = Calculator.new
c.square_root(4)
c.square_root(5)