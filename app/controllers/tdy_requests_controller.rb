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
    
    def show
        @tdy_request = TdyRequest.find(params[:id])
        respond_to do |format|
            format.html
            format.pdf do
                #filename = "#{Prawn::DATADIR}/pdfs/multipage_template.pdf"
                filename = "app/assets/pdfs/NF60.pdf"
                # Prawn::Document.generate("full_template.pdf", :template => filename) do
                #     text "THis content is written on the first page of the template", :align => :center
                # end
                #pdf = Prawn::Document.new(:template => filename)
                pdf = TdyRequestPdf.new(:template => filename)
                send_data pdf.render, filename: "TDY ##{@tdy_request.id}.pdf",
                          type: "application/pdf", disposition: "inline"
            end
        end
        
    end
    
    def get_requests
      
       if (params[:own_requests_only] == "true")
         @tdy_requests = TdyRequest.includes(:users).where(users: {email: current_user.email})  
       else 
         @tdy_requests = TdyRequest.all
       end
       respond_to do |format|
           format.js
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