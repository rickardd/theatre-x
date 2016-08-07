class AddAvatarShowReferences < ActiveRecord::Migration
  def change
    remove_column :avatars, :category
    remove_column :avatars, :category_id
    add_reference :avatars, :show, index: true
    add_foreign_key :avatars, :shows
  end
end
