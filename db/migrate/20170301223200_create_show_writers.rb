class CreateShowWriters < ActiveRecord::Migration
  def change
    create_table :show_writers do |t|
      t.integer :show_id
      t.string :field
      t.string :name
      t.string :string

      t.timestamps null: false
    end
  end
end
