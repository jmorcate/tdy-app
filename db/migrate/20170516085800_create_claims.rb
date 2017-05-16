class CreateClaims < ActiveRecord::Migration[5.0]
  def change
    create_table :claims do |t|
      t.belongs_to :tdy_request, index: true
      t.belongs_to :user, index: true
      
      t.integer :number_days_hotel
      t.boolean :breakfast
      t.boolean :meals_provided_by_location
      t.string :meals_provided

      t.timestamps
    end
  end
end
