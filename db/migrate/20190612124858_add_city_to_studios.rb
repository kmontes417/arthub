class AddCityToStudios < ActiveRecord::Migration[5.2]
  def change
    add_column :studios, :city, :string
  end
end
