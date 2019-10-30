class AddBookingtimeToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :start, :date
    add_column :products, :end, :date
  end
end
