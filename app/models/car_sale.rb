class CarSale < ApplicationRecord
  belongs_to :car
  belongs_to :seller

  validates :seller_id, presence: true
  validates :car_id, presence: true

  def foo
    "bar"
  end
end
