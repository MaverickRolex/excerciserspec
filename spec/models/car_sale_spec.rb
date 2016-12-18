require "rails_helper"

RSpec.describe CarSale, :type => :model do
  it "saves a seller's instance" do
    lindeman = CarSale.new(seller_id: 1, car_id: 1)

    expect(lindeman.save).to eq(true)
  end

  it "does not save a seller's instance" do
    lindeman = CarSale.new(seller_id: 1)

    expect(lindeman.save).to eq(false)
  end

  it "metod foo has returns bar" do
    a = CarSale.new
    expect(a.foo).to eq("bar")
  end
end