class Airport
  def initialize(name, capacity, landed_planes)
    @name = name
    @capacity = capacity
    @landed_planes = landed_planes
  end

  attr_accessor :landed_planes

  def landing_possibility
    if @landed_planes >= @capacity
      "You cannot land"
    else
      "You can land"
    end
  end

  def land(plane)
    fail "The weather is too rough to land" if weather == STORMY
  end
end
