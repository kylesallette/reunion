require 'pry'

class Activity

  attr_reader :name,
              :cost_per_person,
              :participants

  def initialize(name)
    @name = name
    @participants = {}
    @cost_per_person = cost_per_person
  end

  def add_participants(person, amount)
    @participants[person] = amount
  end

  def total_fees
    @participants.values.inject {|a,b|a+b}
  end

  def split_fees
    total_people = @participants.count
    @cost_per_person = total_fees / total_people
  end

  def owed
    new_owed = @participants.values.map do |payed|
      cost_per_person  - payed
    end
    @participants.keys.zip(new_owed)
  end

end
