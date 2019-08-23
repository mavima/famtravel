class ChangeCountryColumnInCities < ActiveRecord::Migration[5.2]
  def change
    rename_column :cities, :country, :country_city
  end
end
