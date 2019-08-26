class AddToddlerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :toddler, :boolean, default: false
  end
end
