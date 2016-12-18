class Car < ApplicationRecord
  belongs_to :provider
  has_many :car_sales

  has_many :sellers, through: :car_sales

  validates :car_model, presence: true
  validates :doors, presence: true
  validates :sub_model, presence: true
  validates :price, presence: true
  validates :provider_id, presence: true

  def foo
    "bar"
  end
end
