require "airport"
describe Airport do

  it "should respond to the method landing possibility" do
    airport = Airport.new("Zephyr", 100, 80)
    expect(airport).to respond_to :landing_possibility
  end

  it "should return 'you cannot land' if the airport capacity is equal to the number of planes" do
    airport = Airport.new("Zephyr", 100, 100)
    expect(airport.landing_possibility).to eq "You cannot land"
  end

  it "should return 'You can land' if the capacity is greater than the number of landed planes" do
    airport = Airport.new("Zephyr", 150, 100)
    expect(airport.landing_possibility).to eq "You can land"
  end
end
