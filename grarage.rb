require_relative "vehicle"
class Grarage

    attr_accessor :capacity, :parkingspot

    def initialize(capacity)
        @capacity = capacity
        @parkingspot = Array.new(capacity)
    end

    def vehicle_checkin(license_plate)
        spot = @parkingspot.index(nil)
        if spot
            @parkingspot[spot] = license_plate
            return "vehicle checkedin at spot 1."
        else
            return "Garage is full."
        end

    end

    def vehicle_checkout(license_plate)
        spot = @parkingspot.index(license_plate)
        if spot
            @parkingspot[spot] = nil
            return "vehicle checked out at spot 1."
        else
            return "vehicle not found."
        end
    end

    def search(license_plate)
        spot = @parkingspot.index(license_plate)
        if spot
            return "vehicle with license number #{license_plate} found at spot 1."
        else
            return "vehicle not found."
        end
    end

    def view_available_slots
        available = @parkingspot.count(nil)
        return "There are #{available} available parking spots."
    end

end


gar = Grarage.new(10)

puts "1. Checkin the vehicle"
puts "2. Checkout the vehicle"
puts "3. Search the vehicle"
puts "4. View available slots"
puts "5. Exit"
puts "Enter your choice..."

option = gets.chomp.to_i



case option
when 1
puts "Enter license plate number :"
license_plate = gets.chomp
puts "Enter owner name :"
owner_name = gets.chomp
puts "Enter vehicle type :"
vehicle_type = gets.chomp
Vehicle.new(license_plate, owner_name, vehicle_type)
puts gar.vehicle_checkin(license_plate)

when 2
    puts "Enter license plate number :"
    license_plate = gets.chomp
    puts gar.vehicle_checkout(license_plate)

when 3
    puts gar.search(license_plate)
when 4
    puts gar.view_available_slots
else
    puts "Invalid option, Please try again later"
end


