require 'pry'

class Dog

    @@message = "hey there!"
    @@all = []

    attr_accessor :name
    attr_reader :breed

    def initialize(name, breed)
        @name = name
        @breed = breed

        @@all << self
    end

    def self.all
        @@all
    end

    def self.great_danes
        @@all.filter {|dog| dog.breed == "Great Dane"}
    end

    def bark
        puts "Bau wow"
    end

    # def put_itself
    #     puts itself
    # end

    def self.say_message
        puts @@message
    end

end

dog_one = Dog.new("Fido", "Great Dane")
dog_two = Dog.new("Blue", "Border Collie")
dog_three = Dog.new("Spot", "German Shepherd")

binding.pry