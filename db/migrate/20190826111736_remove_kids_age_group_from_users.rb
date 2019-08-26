class RemoveKidsAgeGroupFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :kids_age_group
  end
end
