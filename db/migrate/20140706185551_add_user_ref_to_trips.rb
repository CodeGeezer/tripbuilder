class AddUserRefToTrips < ActiveRecord::Migration
  def change
    add_reference :trips, :user_id, index: true
  end
end
