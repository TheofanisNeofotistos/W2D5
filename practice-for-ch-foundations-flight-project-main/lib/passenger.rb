
class Passenger
    attr_reader :name
    
    def initialize(name)
        @name = name 
        @flight_numbers = []
    end 

    def has_flight?(flightNum)
       @flight_numbers.each do |flight|
            if flight.downcase == flightNum.downcase
                return true 
            end
       end
        return false
    end

    def add_flight(flightNum)
        if self.has_flight?(flightNum) == false 
            @flight_numbers << flightNum.upcase
        end
    end


end