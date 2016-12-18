require "rails_helper"

RSpec.describe Car, :type => :model do
  it "saves a car's instance" do
    p = Provider.create(name: "David", country: "Chelimsky")

    c = Car.new(car_model: "spectre",
                doors: 4,
                sub_model: "GT",
                price: 24000.00,
                provider_id: p.id
                )

    expect(c.save).to eq(true)
  end

  it "does not save a car's instance" do
    c = Car.new(car_model: "spectre",
                doors: 4,
                sub_model: "GT",
                provider_id: 1
                )

    expect(c.save).to eq(false)
  end

  it "metod foo has returns bar" do
    c = Car.new
    expect(c.foo).to eq("bar")
  end

  it "relation with providers returns provider" do
    p = Provider.create(name: "Dodge", country: "USA")
    c = Car.create(car_model: "spectre",
                    doors: 4,
                    sub_model: "2016",
                    price: 24000.00,
                    provider_id: p.id
                    )
    expect(c.provider).to eql(p)
  end

  it "relation with car_sale returns car_sale" do
    p = Provider.create(name: "Dodge", country: "USA")
    c = Car.create(car_model: "spectre",
                    doors: 4,
                    sub_model: "2016",
                    price: 24000.00,
                    provider_id: p.id
                    )
    s = Seller.create(first_name: "David", last_name: "Chelimsky")
    cs = CarSale.create(seller_id: s.id, car_id: c.id)

    expect(cs.car).to eql(c)
  end
end