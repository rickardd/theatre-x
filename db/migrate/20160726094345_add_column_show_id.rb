class AddColumnShowId < ActiveRecord::Migration
  def change
    add_column :show_calendars, :show_id, :integer
  end
end
