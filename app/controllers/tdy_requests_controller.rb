class TdyRequestsController < ApplicationController
    def index
        @tdy_requests = TdyRequest.all
    end
    def new
        @users = User.all
        @tdy_request = TdyRequest.new 
    end
    def create
        byebug
        @tdy_request = TdyRequest.new(tdy_request_params) 
        if  @tdy_request.save
            redirect_to  tdy_requests_url
        else
            render 'new'
        end
    end
    
    private 
    
        def tdy_request_params
            params.require(:tdy_request).permit(:purpose, :departure, :return, {:user_ids => []})
        end
end
