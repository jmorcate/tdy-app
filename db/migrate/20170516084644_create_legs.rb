class CreateLegs < ActiveRecord::Migration[5.0]
  def change
    create_table :legs do |t|
      t.string :mode_transport
      t.string :depart
      t.datetime :depart_time
      t.string :destination
      t.string :destination_time
      t.string :expenses
      t.integer :distance
      t.belongs_to :claim, index: true

      t.timestamps
    end
  end
end
