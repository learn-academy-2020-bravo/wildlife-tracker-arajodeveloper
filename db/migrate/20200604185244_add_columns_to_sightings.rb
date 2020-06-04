class AddColumnsToSightings < ActiveRecord::Migration[6.0]
  def change
    add_column :sightings, :action, :string
  end
end
