class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :category
      t.text :description
      t.string :address
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
