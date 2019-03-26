class Plane
  attr_accessor :plane_state
  def initialize(origin, destination, plane_state)
    @origin = origin
    @destination = destination
    @plane_state = plane_state
  end
  def land
    @plane_state = "landed"
  end
  def take_off
    @plane_state = "flying"
  end
  def flying?
    return true if @plane_state == "flying"
  end
  def landed?
    return true if @plane_state == "landed"
  end
end
