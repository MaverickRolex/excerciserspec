class Seller < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  def foo
    "bar"
  end
end
