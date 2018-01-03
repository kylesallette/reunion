require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test

  def test_it_exists
    activity = Activity.new("Hiking")

    assert_instance_of Activity, activity
  end

  def test_i_can_add_activitys
    activity = Activity.new("Hiking")

    assert_equal "Hiking", activity.name
  end

def test_total_fees_for_activity
    activity = Activity.new("Hiking")

    activity.add_participants("John",50)
    activity.add_participants("Mark",75)

    assert_equal 125, activity.total_fees
  end

  def test_i_can_split_fees
    activity = Activity.new("Hiking")

    activity.add_participants("John",50)
    activity.add_participants("Mark",75)
    activity.add_participants("Paul",25)

    assert_equal 50, activity.split_fees
  end

  def test_does_not_split_one_persons_fee
    activity = Activity.new("Hiking")

    activity.add_participants("John",50)

    assert_equal 50, activity.split_fees
  end

  def test_who_owes_what
    activity = Activity.new("Hiking")

    activity.add_participants("John",50)
    activity.add_participants("Mark",75)
    activity.add_participants("Paul",25)
    activity.add_participants("Judis",50)
    activity.split_fees

    assert_equal [["John", 0], ["Mark", -25], ["Paul", 25], ["Judis", 0]], activity.owed
  end

  def test_i_can_add_activitys
    activity = Activity.new("Hiking")

    assert_equal "Hiking", activity.name
  end



end
