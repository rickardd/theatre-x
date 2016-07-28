class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.text :column_1
      t.text :column_2
      t.text :column_3
      t.string :title
      t.string :image

      t.timestamps null: false
    end
  end
end
