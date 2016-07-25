class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisements.all
  end

  def show
    @advertisement = Advertisment.find(params[:id])
  end

  def new
    @advertisment = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new
    @advertisement.title = params[:advertisement][:title]
    @advertisement.copy = params[:advertisement][:copy]
    @advertisement.price = params[:advertisement][:price]

     if @advertisement.save

       flash[:notice] = "advertisement was saved successfully."
       redirect_to @advertisement
     else

       flash[:error] = "There was an error saving the advertisement. Please try again."
       render :new
     end
  end
end
  
