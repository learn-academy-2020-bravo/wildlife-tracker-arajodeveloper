class CreateSightings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightings do |t|
      t.integer :animal_id
      t.datetime :date
      t.float :latitude
      t.float :longtitude

      t.timestamps
    end
  end
end
