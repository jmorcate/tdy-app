class AddUsertoTdyRequestAsDriver < ActiveRecord::Migration[5.0]
  def change
    add_reference :tdy_requests, :driver, references: :users, index: true
    add_foreign_key :tdy_requests, :users, column: :driver_id
  end
end
