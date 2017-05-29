class ClaimsController < ApplicationController
  
  def new
  end

  def create
  end
  
  private 
    def claims_params
      params.require(:claim).permit(:number_days_hotel, :breakfast, :meals_provided_by_location, :meals_provided, 
        legs_attributes: [:mode_transport,:depart, :depart_time, :destination, :destination_time] )
    end
end
