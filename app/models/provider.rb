class Provider < ApplicationRecord
  has_many :cars
  
  validates :name, presence: true
  validates :country, presence: true

  def foo
    "bar"
  end
end
