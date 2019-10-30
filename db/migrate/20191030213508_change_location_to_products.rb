class ChangeLocationToProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :location, :string
  end
end
