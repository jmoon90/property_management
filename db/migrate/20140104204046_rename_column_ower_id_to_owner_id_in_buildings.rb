class RenameColumnOwerIdToOwnerIdInBuildings < ActiveRecord::Migration
  def up
    rename_column :buildings, :ower_id, :owner_id
  end

  def down
    rename_column :buildings, :owner_id, :ower_id
  end
end
