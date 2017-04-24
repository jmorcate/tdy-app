class CreateTdyRequestsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :tdy_requests_users do |t|
      t.belongs_to :tdy_request, index: true
      t.belongs_to :user, index: true
    end 
  end
end
