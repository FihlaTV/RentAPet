class Listing < ActiveRecord::Base

  belongs_to :user

  validates :title, :presence => true
  validates :pet_name, :presence => true
  validates :price, :presence => true

  def format_price
    price = "$" + self.price.to_s + ".00"
    return price
  end

end
