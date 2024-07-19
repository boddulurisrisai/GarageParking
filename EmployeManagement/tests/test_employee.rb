require "minitest/autorun"
require "./employee"

class TestEmployee < MiniTest::Test
    def check_employee_status
        expected_outcome = "Name: Srisai,\n Position: Software Engineer,\n Salary: 200000\n Company: OpenWorld Technologies Pvt. Ltd."
        emp = Employee.new('Srisai', 'Software Engineer', 200000)
        actual_outcome = emp.display_info
        assert_equal(expected_outcome, actual_outcome, "Something has Failed")
    end
end
