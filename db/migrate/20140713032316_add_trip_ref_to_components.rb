class AddTripRefToComponents < ActiveRecord::Migration
  def change
  	add_reference :components, :trip, index: true
  end
end
