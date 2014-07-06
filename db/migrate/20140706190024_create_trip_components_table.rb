class CreateTripComponentsTable < ActiveRecord::Migration
  def change
    	create_join_table :trips, :components, column_options: {null: true} , table_name: :trip_components
   end
end
