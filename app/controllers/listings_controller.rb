class ListingsController < ApplicationController
  load_and_authorize_resource

def index

end

def new
end

def create
  current_user.listings.push(@listing)
  @listing.avatars = params[:listing][:avatars]
  if @listing.save
    redirect_to listing_path(@listing)
  else
    render :new
  end
end

def show
end


private

def listing_params
  params.require(:listing).permit(:title, :pet_name, :price)
end

end
