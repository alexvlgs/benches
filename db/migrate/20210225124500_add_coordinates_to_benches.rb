class AddCoordinatesToBenches < ActiveRecord::Migration[6.1]
  def change
    add_column :benches, :latitude, :float
    add_column :benches, :longitude, :float
  end
end
