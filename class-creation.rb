require 'pry'

class Airplane

    # attr_reader :color, :type
    # attr_writer :color, :type

    attr_accessor :color, :type

    def initialize(type, color="blue")
        @type = type
        @color = color
    end

    # def color=(color) # setter (writers)
    #     @color = color
    # end

    # def color # getter (readers)
    #     @color
    # end

    #getter
    # def type
    #     @type
    # end

    #setter
    # def type=(type)
    #     @type=type
    # end

    def fly
        puts "I am flying away!!!"
    end

    def fly_to(location, mph)
        puts "I am flying to #{location} at #{mph} miles per hour"
    end

end

airplane = Airplane.new("747", "green")

binding.pry