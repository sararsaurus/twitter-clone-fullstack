class RenameLeaderIdToFolloweeId < ActiveRecord::Migration[7.0]
  def change
    rename_column :follows, :leader_id, :followee_id
  end
end
