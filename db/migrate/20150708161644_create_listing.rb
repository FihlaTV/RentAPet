class CreateListing < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.integer :price
    end
  end
end
