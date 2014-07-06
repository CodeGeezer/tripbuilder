class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.text :description
      t.date :start
      t.date :end
      t.decimal :lat
      t.decimal :lon
      t.text :comments
      t.string :rescode

      t.timestamps
    end
  end
end
