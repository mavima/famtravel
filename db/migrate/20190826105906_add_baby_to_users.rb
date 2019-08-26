class AddBabyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :baby, :boolean, default: false
  end
end
