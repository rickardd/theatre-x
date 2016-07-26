class CreateShowPrices < ActiveRecord::Migration
  def change
    create_table :show_prices do |t|
      t.integer :price
      t.string :description
      t.integer :primary
      t.integer :show_id
      t.timestamps null: false
    end
  end
end
