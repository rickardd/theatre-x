class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.text :description
      t.string :image
      t.boolean :display

      t.timestamps null: false
    end
  end
end
