class AddColumnOnPageToCoOperation < ActiveRecord::Migration
  def change
    add_column :co_operations, :on_page, :boolean, :default => true
    add_column :abouts, :on_page, :boolean, :default => true
    add_column :courses, :on_page, :boolean, :default => true
    add_column :shows, :on_page, :boolean, :default => true
  end
end
