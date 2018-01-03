require 'pry'

class Reunion

  attr_reader :location,
              :activities

  def initialize(location)
    @location = location
    @activities  = []
  end

  def add_activity(event)
    @activities  << event
  end

  def total_fees_for_reunion
    
  end

end
