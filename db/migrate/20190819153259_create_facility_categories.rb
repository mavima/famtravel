class CreateFacilityCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :facility_categories do |t|
      t.string :name
      t.references :facility

      t.timestamps
    end
  end
end
