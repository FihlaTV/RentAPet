class ListingsController < ApplicationController
def index

end

def new
  @listing = Listing.new
end

def create
  @listing = current_user.listings.new(listing_params)
  @listing.avatars = params[:listing][:avatars]
  if @listing.save
    redirect_to listing_path(@listing)
  else
    render :new
  end
end

def show

  @listing = Listing.find(params[:id])
end


private

def listing_params
  params.require(:listing).permit(:title, :pet_name, :price)
end

end
