class TdyRequestsController < ApplicationController
    def index
        @tdy_requests = TdyRequest.all
    end
end
