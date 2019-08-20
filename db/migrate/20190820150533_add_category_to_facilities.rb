class AddCategoryToFacilities < ActiveRecord::Migration[5.2]
  def change
    add_reference :facilities, :category, foreign_key: true
  end
end
