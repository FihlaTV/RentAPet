class AddToListings < ActiveRecord::Migration
  def change
    add_column :listings, :pet_name, :string
    add_column :listings, :species, :string
    add_column :listings, :breed, :string
    add_column :listings, :age, :integer
    add_column :listings, :attitude, :string
    add_column :listings, :restrictions, :string
    add_column :listings, :active_level, :string
    add_column :listings, :size, :string
    add_column :listings, :weight, :integer
    add_column :listings, :available, :string

  end
end
