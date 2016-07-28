class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :column_1
      t.text :column_2
      t.string :title

      t.timestamps null: false
    end
  end
end
