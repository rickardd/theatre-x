class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.string :image
      t.string :category
      t.integer :category_id
    end
  end
end
