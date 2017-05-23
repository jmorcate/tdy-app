module TdyRequestsHelper
    
    def claimed?(tdy)
        tdy.users.include?(current_user)
    end
end
