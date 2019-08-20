class CreateFeatureFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_facilities do |t|
      t.references :facility, foreign_key: true
      t.references :feature, foreign_key: true

      t.timestamps
    end
  end
end
