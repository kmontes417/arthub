class AddDefaultToCityOnStudios < ActiveRecord::Migration[5.2]
  def change
    change_column :studios, :city, :string, default: "Milan"
  end
end
