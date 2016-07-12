class Product < ApplicationRecord
  validates :name, null: false
  validates :price, presence: true
  validates :on_clearance, default: false
  validates :condition, length: { maximum: 500 }
  validates :quantity, numericality: { only_integer: true }

  def display_price
      if condition == "good"
        price * 0.9
      elsif condition == "average"
        price * 0.8
      else
        price
      end
  end
end
