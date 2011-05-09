class AddEventsToTimegliders < ActiveRecord::Migration
  def self.up
    add_column :time_gliders, :events, :text
  end

  def self.down
    remove_column :time_gliders, :events, :text
  end
end
