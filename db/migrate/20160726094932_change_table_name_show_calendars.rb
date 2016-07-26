class ChangeTableNameShowCalendars < ActiveRecord::Migration
  def change
    rename_table :show_calendars, :show_dates
  end
end
