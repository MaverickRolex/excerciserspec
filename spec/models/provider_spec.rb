require "rails_helper"

RSpec.describe Provider, :type => :model do
  it "saves a seller's instance" do
    lindeman = Provider.new(name: "David", country: "Chelimsky")

    expect(lindeman.save).to eq(true)
  end

  it "does not save a seller's instance" do
    lindeman = Provider.new(country: "Chelimsky")

    expect(lindeman.save).to eq(false)
  end

  it "metod foo has returns bar" do
    a = Provider.new
    expect(a.foo).to eq("bar")
  end

  it "relation with cars returns cars" do
    prov = Provider.create(name: "Dodge", country: "USA")
    car = Car.create(car_model: "spectre",
                    doors: 4,
                    sub_model: "2016",
                    price: 24000.00,
                    provider: prov
                    )
    expect(prov.cars.count).to eql(1)
  end
end