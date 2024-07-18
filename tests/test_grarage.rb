require 'minitest/autorun'
require './vehicle'
require './grarage'
class GrarageTests < MiniTest::Test
    def test_vehicle_checkin
        expected_outcome = "vehicle checkedin at spot 1."
        Vehicle.new('AP071615', 'Srisai', 'Pulsar')
        actual_outcome = Grarage.new(10).vehicle_checkin('AP071615')
        assert_equal(expected_outcome, actual_outcome, "Something Failed")
        end
    end