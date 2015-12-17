class CreateTripsTable < ActiveRecord::Migration
  def change
  	t.string :location
  	t.date :start_date
  	t.date :end_date
  	t.integer :price
  end
end
