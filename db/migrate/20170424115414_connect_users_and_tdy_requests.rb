class ConnectUsersAndTdyRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :tdy_request_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tdy_request, index: true
    end
  end
end