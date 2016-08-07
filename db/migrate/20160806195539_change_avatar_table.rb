class ChangeAvatarTable < ActiveRecord::Migration
  def change
    drop_table :avatars
  end
end
