class CompleteTdyRequestData < ActiveRecord::Migration[5.0]
  def change
    add_column :tdy_requests, :meeting_start, :datetime
    add_column :tdy_requests, :meeting_end, :datetime
    add_column :tdy_requests, :destination_airport, :string
    add_column :tdy_requests, :advanced_allowance, :boolean
    add_column :tdy_requests, :official_courier, :boolean
    add_column :tdy_requests, :budget, :string
    add_column :tdy_requests, :comments, :text
  end
end
