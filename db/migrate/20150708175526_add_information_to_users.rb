class AddInformationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :description, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street_address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :integer
    add_column :users, :phone, :integer
    add_column :listings, :user_id, :integer
  end
end
