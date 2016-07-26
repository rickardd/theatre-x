class ChangeColumnTypePrice < ActiveRecord::Migration
  def change
    remove_column :show_prices, :primary
    add_column :show_prices, :primary, :boolean
  end
end
