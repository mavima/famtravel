class AddChildToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :child, :boolean, default: false
  end
end
