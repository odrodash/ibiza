class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :category
      t.boolean :available
      t.integer :price
      t.text :state
      t.text :location
      t.string :delivery
      t.string :return

      t.timestamps
    end
  end
end
