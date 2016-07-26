class CreateShowCalendars < ActiveRecord::Migration
  def change
    create_table :show_calendars do |t|
      t.string :date
      t.boolean :soldOut

      t.timestamps null: false
    end
  end
end
