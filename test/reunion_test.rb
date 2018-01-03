require 'minitest'
require 'minitest/test'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/reunion'
require './lib/activity'
class ReunionTest < Minitest::Test

  def test_it_exists
    reunion = Reunion.new("Tokyo")

    assert_instance_of Reunion, reunion
  end

  def test_you_can_add_location
    reunion = Reunion.new("Tokyo")

    assert_equal "Tokyo", reunion.location
  end

  def test_i_can_add_activitys
    reunion = Reunion.new("Tokyo")
    activity = Activity.new("Hiking")

    reunion.add_activity(activity)

    assert_equal "Hiking", activity.name
  end

end
