require 'rails_helper'

describe "Create Listings" do
  it "lets the user create a listing" do
    user = FactoryGirl.create(:user)
    login_as(user)
    # visit new_user_session_path
    # fill_in 'user_email', with: user.email
    # fill_in 'user_password', with: user.password
    # click_on 'Log in'
    visit new_listing_path
    fill_in 'listing_title', with: "dog"
    fill_in 'listing_pet_name', with: "fido"
    fill_in 'listing_price', with: "350"
    click_on "submit-listing"
    expect(page).to have_content("dog")
    expect(page).to have_content("fido")
    expect(page).to have_content("$350.00")
  end
end
