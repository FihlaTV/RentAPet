class Listing < ActiveRecord::Base

  belongs_to :user

  validates :title, :presence => true
  validates :pet_name, :presence => true
  validates :price, :presence => true
  # validates :avatars, :presence => true

  mount_uploaders :avatars, AvatarUploader

  def format_price
    price = "$" + self.price.to_s + ".00"
    return price
  end

  def image_array
    image_number = self.avatars.length
    index = 0
    image_array = []
    while index < image_number
      image_array.push(self.avatars[index].url)
      index += 1
    end
    image_array
  end

end
