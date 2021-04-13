class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
