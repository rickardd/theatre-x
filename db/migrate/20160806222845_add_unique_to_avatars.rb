class AddUniqueToAvatars < ActiveRecord::Migration
  def change
    remove_index :avatars, :show_id
    remove_column :avatars, :show_id
    add_column :avatars, :show_id, :string
    add_index :avatars, :show_id, :unique => true
  end
end
