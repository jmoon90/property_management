class ChangeUserColumnToOwnerInBuildings < ActiveRecord::Migration
  def up
    rename_column :buildings, :user_id, :ower_id
  end
  def down
    rename_column :buildings, :ower_id, :user_id
  end
end
