class CreateTripComponents < ActiveRecord::Migration
  def change
    create_table :trip_components do |t|

      t.timestamps
    end
  end
end
