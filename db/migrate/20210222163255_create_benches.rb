class CreateBenches < ActiveRecord::Migration[6.1]
  def change
    create_table :benches do |t|
      t.string :name
      t.string :location
      t.string :city
      t.integer :score
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
