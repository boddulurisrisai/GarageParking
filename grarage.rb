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
            puts "vehicle checkedin at spot 1."
        else
            puts "Garage is full."
        end

    end

    def vehicle_checkout(license_plate)
        spot = @parkingspot.index(license_plate)
        if spot
            @parkingspot[spot] = nil
            return "vehicle checked out at spot 1."
        else
            puts "vehicle not found."
        end
    end

    def search(license_plate)
        spot = @parkingspot.index(license_plate)
        if spot
            puts "vehicle with license number #{license_plate} found at spot 1."
        else
            puts "vehicle not found."
        end
    end

    def view_available_slots
        available = @parkingspot.count(nil)
        puts "There are #{available} available parking spots."
    end

end


gar = Grarage.new(10)
puts "Hi"

loop do 
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
        gar.vehicle_checkout(license_plate)

    when 3
        gar.search(license_plate)
    when 4
        gar.view_available_slots
    when 5
        break
    else
        puts "Invalid option, Please try again later"
    end
end

