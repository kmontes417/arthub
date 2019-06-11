class AddPriceToStudios < ActiveRecord::Migration[5.2]
  def change
    add_column :studios, :price, :float
  end
end
