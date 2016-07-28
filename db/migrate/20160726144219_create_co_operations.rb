class CreateCoOperations < ActiveRecord::Migration
  def change
    create_table :co_operations do |t|
      t.text :column_1
      t.text :column_2
      t.string :title
      t.string :image

      t.timestamps null: false
    end
  end
end
