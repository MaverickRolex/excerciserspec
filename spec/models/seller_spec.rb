require "rails_helper"

RSpec.describe Seller, :type => :model do
  it "saves a seller's instance" do
    lindeman = Seller.new(first_name: "David", last_name: "Chelimsky")

    expect(lindeman.save).to eq(true)
  end

  it "does not save a seller's instance" do
    lindeman = Seller.new(last_name: "Chelimsky")

    expect(lindeman.save).to eq(false)
  end

  it "metod foo has returns bar" do
    a = Seller.new
    expect(a.foo).to eq("bar")
  end
end

