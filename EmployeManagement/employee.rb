#require "active_support/all"
$company_name = "OpenWorld Technologies Pvt. Ltd."
$employees = Hash.new
class Employee

    def initialize(name, position, salary)
        @name = name
        @position = position
        @salary = salary.to_i
        $employees[@name] = @salary
    end

    def promote
        @salary += 10000
        @position = "Senior " + @position
    end

    def display_info
        puts "Name: #{@name},\n Position: #{@position},\n Salary: #{@salary},\n Company: #{$company_name}\n"

    end

    @@employe_count = 0
    @@total_salary = 0
    

    def self.total_employees
        @@employe_count = $employees.length
        return @@employe_count
    end

    def self.average_salary
        $employees.each do |name, salary|
            @@total_salary += $employees[name]
        end
        return @@total_salary / $employees.length
    end
end

emp1 = Employee.new('Srisai', 'Software Engineer', 200000)
emp2 = Employee.new('Sai', 'Associate Software Engineer', 200000)
emp3 = Employee.new('Kowshik', 'Intern', 200000)

emp1.display_info
emp2.display_info
emp3.promote
emp3.display_info

puts "Total number of employees: #{Employee.total_employees}"
puts "Average Employee salary in #{$company_name} is #{Employee.average_salary}."
