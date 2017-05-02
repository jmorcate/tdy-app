class TdyRequestsController < ApplicationController
    def index
        @tdy_requests = TdyRequest.all
    end
    def new
        @users = User.all
        @tdy_request = TdyRequest.new 
    end
    def create
        @tdy_request = TdyRequest.new(tdy_request_params) 
        if  @tdy_request.save
            redirect_to  tdy_requests_url
        else
            @users=User.all
            render 'new'
        end
    end
    
    private 
    
        def tdy_request_params
            params.require(:tdy_request).permit(:purpose, :departure, :return, 
            :air, :airport_service, :train, :pomv, :other_transportation, 
            :driver_id, :destination, :destination_airport, :meeting_start, :meeting_end,
            :budget, :advanced_allowance, :official_courier,:comments,
            {:user_ids => []})
        end
end