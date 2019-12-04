class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :address
      t.string :category

      t.timestamps
    end
  end
end
