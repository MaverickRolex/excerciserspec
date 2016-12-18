class Seller < ApplicationRecord
  has_many :car_sales

  has_many :cars, through: :car_sales

  validates :first_name, presence: true
  validates :last_name, presence: true

  def foo
    "bar"
  end
end
