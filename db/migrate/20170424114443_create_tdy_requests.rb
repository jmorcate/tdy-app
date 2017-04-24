class CreateTdyRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :tdy_requests do |t|
      t.string :destination
      t.string :purpose
      t.datetime :departure
      t.datetime :return

      t.timestamps
    end
  end
end
