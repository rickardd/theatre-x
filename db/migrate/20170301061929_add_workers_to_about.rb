class AddWorkersToAbout < ActiveRecord::Migration
  def change
    add_column :abouts, :worker_1, :string
    add_column :abouts, :worker_2, :string
  end
end
