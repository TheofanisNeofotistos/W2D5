require_relative "passenger"

class Flight 
    attr_reader :passengers

    def initialize(flightNum,cap)
        @flight_number = flightNum
        @capacity = cap
        @passengers = []

    end

    def full?
        return passengers.length == @capacity
    end

    def board_passenger(passenger)
        if (passenger.has_flight?(@flight_number) && !full?)
            @passengers << passenger
        end
    end

    def list_passengers
        names = []
         @passengers.each do |passenger|
            names << passenger.name
         end
         names
    end

    def [](number)
       @passengers[number]
    end

    def <<(passenger)
        board_passenger(passenger)
    end
end