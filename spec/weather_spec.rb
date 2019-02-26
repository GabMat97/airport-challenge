require "weather"
describe Weather do
  it "should respond to the method forecast" do
    expect(subject).to respond_to :forecast
  end

  it "should return 1 if the weather is sunny" do
    weather = Weather.new
    allow(subject).to receive(:forecast).and_return(Weather::SUNNY)
    check_weather = weather.forecast
    expect(subject.forecast).to eq(Weather::SUNNY)
    expect(subject.forecast).to eq(1) | eq(2)
  end

   it "should return 2 when it's sunny" do
     allow(subject).to receive(:forecast).and_return(Weather::STORMY)
     expect(subject.forecast).to eq(Weather::STORMY)
   end

   it "should return true if weather is sunny" do
     weather = Weather::SUNNY
     expect(subject.is_sunny?(weather)).to eq true
   end

   it "should return false if weather is stormy" do
     weather = Weather::STORMY
     expect(subject.is_sunny?(weather)).to eq false
   end
end
