class Product < ApplicationRecord
  validate :name, null: false
  validate :price, presence: true
  validate :on_clearance, default: false
  validate :condition, default: ""
  validate :quantity, default: 0

  def display_price
      if condition == "good"
        display_price == price * 0.9
      elsif condition == "average"
        display_price == price * 0.8
      else
        price
      end
  end
end
    # display_price = price * .9
#   elsif condition == "average"
#     display_price = price * .8
#   else
#    price
