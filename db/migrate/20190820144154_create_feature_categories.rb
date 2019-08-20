class CreateFeatureCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_categories do |t|
      t.references :category, foreign_key: true
      t.references :feature, foreign_key: true

      t.timestamps
    end
  end
end
