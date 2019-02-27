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
end
