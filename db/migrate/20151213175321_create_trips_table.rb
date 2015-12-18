class CreateTripsTable < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
    	t.string :location
    	t.date :start_date
    	t.date :end_date
    	t.integer :price
    end
  end
end
