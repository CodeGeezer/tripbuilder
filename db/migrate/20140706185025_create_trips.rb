class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.text :description
      t.time :start
      t.time :end
      t.string :theme
      t.string :region

      t.timestamps
    end
  end
end
