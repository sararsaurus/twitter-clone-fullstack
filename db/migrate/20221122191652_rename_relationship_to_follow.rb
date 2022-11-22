class RenameRelationshipToFollow < ActiveRecord::Migration[7.0]
  def change
    rename_table :relationships, :follows
  end
end
