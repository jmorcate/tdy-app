class ClaimsController < ApplicationController
  
  def new
    @claim = Claim.new
    
    # The following two lines are equivalent. 
    #@claim.tdy_request = TdyRequest.find(params[:request])
    @claim.tdy_request_id = params[:request]
  end

  def create
    @claim = Claim.new(claim_params)

    if @claim.save
      flash[:notice] = "The <b>#{ @claim.id }</b> claim has been saved successfully."
      redirect_to(claims_path, :notice => "The <b>#{ @clain.id }</b> claim has been saved successfully.")
    else
      render(:new, :error => @claim.errors)
    end
    
  end
  
  private 
    def claim_params
      params.require(:claim).permit(:number_days_hotel, :breakfast, :meals_provided_by_location, :meals_provided, 
        legs_attributes: [:mode_transport,:depart, :depart_time, :destination, :destination_time] )
    end
end
