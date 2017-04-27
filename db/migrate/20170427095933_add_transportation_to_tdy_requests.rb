class AddTransportationToTdyRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :tdy_requests, :air, :boolean
    add_column :tdy_requests, :airport_service, :boolean
    add_column :tdy_requests, :train, :boolean
    add_column :tdy_requests, :pomv, :boolean
    add_column :tdy_requests, :other_transportation, :string
  end
end
