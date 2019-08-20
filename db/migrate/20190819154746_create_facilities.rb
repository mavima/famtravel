class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :address
      t.string :photo
      t.integer :rating
      t.string :website_link
      t.float :latitude
      t.float :longitude
      t.references :user, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
