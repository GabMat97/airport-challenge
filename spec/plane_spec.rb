require 'plane'
describe Plane do
  it "should return flying if plane_state is true" do
    plane = Plane.new("London", "Lisbon", "flying")
    expect(plane.flying?).to eq true
  end
  it "should return landed if plane_state is true" do
    plane = Plane.new("London", "Lisbon", "landed")
    expect(plane.landed?).to eq true
  end
  it "is able to takeoff a plane" do
    plane = Plane.new("London", "Lisbon", "landed")
    plane.take_off
    expect(plane.plane_state).to eq("flying")
  end
  it "is able to land a plane" do
    plane = Plane.new("London", "Lisbon", "flying")
    plane.land
    expect(plane.plane_state).to eq("landed")
  end
end
