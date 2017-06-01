class ClaimsController < ApplicationController
  
  def new
    @claim = Claim.new
    
    # The following two lines are equivalent. 
    #@claim.tdy_request = TdyRequest.find(params[:request])
    @claim.tdy_request_id = params[:request]
  end

  def create
    @claim = Claim.new(claim_params)
    @claim.user_id = current_user.id
    if @claim.save
      flash[:notice] = "The <b>#{ @claim.id }</b> claim has been saved successfully."
      redirect_to  tdy_requests_url
      #redirect_to(claims_path, :notice => "The <b>#{ @clain.id }</b> claim has been saved successfully.")
    else
      byebug
      render(:new, :error => @claim.errors)
    end
    
  end
  
  private 
    def claim_params
      params.require(:claim).permit(
        :tdy_request_id,  :travel_order_num, :dayly_room_rate, :number_days_hotel, 
        :breakfast_included,:meals_provided_by_location,:meals_provided_list,
        legs_attributes: [
          :id, :mode_transport,:depart, :depart_time, :destination, 
          :destination_time, :expenses, :distance, :_destroy] )
    end
end
  
 
