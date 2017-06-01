class CreateClaims < ActiveRecord::Migration[5.0]
  def change
    create_table :claims do |t|
      t.belongs_to :tdy_request, index: true
      t.belongs_to :user, index: true
      
      t.string :travel_order_num
      
      t.string :daily_room_rate
      t.integer :number_days_hotel
      t.boolean :breakfast_included
      
      t.boolean :other_costs
      t.string  :other_costs_proof
      
      t.boolean :meals_provided_by_location
      t.string :meals_provided_list

      t.timestamps
    end
  end
end
